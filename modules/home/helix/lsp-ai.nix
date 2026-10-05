{
  lib,
  pkgs,
  secrets,
}:

rec {
  features = {
    name = "lsp-ai";
    only-features = [
      "completion"
      "code-action"
    ];
  };
  lspAiActionContext = 32768;
  lspAiCompletionContext = 12288;
  lspAiPackage = pkgs.lsp-ai.overrideAttrs (oldAttrs: {
    patches = (oldAttrs.patches or [ ]) ++ [
      ./lsp-ai-file-context.patch
      ./lsp-ai-openai-chat-params.patch
    ];
  });

  lsp = {
    command = "${lspAiPackage}/bin/lsp-ai";
    args = [
      "--stdio"
      "--use-seperate-log-file"
    ];
    environment = {
      PERPLEXITY_API_KEY = secrets.perplexity_key;
    };

    config = {
      memory.file_store = {
        context_files = [ "AGENT.md" ];
        crawl = {
          # Load same-extension workspace files on demand so actions can see more than one buffer.
          max_file_size = 1000000;
          max_crawl_memory = 25000000;
          all_files = false;
        };
      };

      models =
        let
          perplexityModel = model: {
            type = "open_ai";
            chat_endpoint = "https://api.perplexity.ai/v1/sonar";
            inherit model;
            auth_token_env_var_name = "PERPLEXITY_API_KEY";
          };
          perplexityAgentModel = model: {
            type = "open_ai";
            chat_endpoint = "https://api.perplexity.ai/v1/responses";
            api_format = "responses";
            inherit model;
            auth_token_env_var_name = "PERPLEXITY_API_KEY";
          };
        in
        {
          chatgpt-fast = perplexityAgentModel "openai/gpt-5-mini";
          chatgpt-smart = perplexityAgentModel "openai/gpt-5.1";
          chatgpt-gigabrain = perplexityAgentModel "openai/gpt-5.4";

          claude-fast = perplexityAgentModel "anthropic/claude-haiku-4-5";
          claude-smart = perplexityAgentModel "anthropic/claude-sonnet-4-6";
          claude-gigabrain = perplexityAgentModel "anthropic/claude-opus-4-7";

          perplexity-fast = perplexityModel "sonar";
          perplexity-smart = perplexityModel "sonar-pro";
          perplexity-gigabrain = perplexityModel "sonar-reasoning-pro";
        };

      chat =
        let
          chatSystem = ''
            You are a concise coding assistant. Answer the user's request accurately and focus on actionable code changes.
          '';
          chatUser = ''
            Current file:
            Name: {FILE_NAME}
            Path: {FILE_PATH}
            URI: {FILE_URI}

            Current workspace context:

            {CONTEXT}

            Current file and opened-file context:

            {CODE}
          '';
          openAIParams = {
            max_context = lspAiActionContext;
            max_tokens = 2048;
            messages = [
              {
                role = "system";
                content = chatSystem;
              }
              {
                role = "user";
                content = chatUser;
              }
            ];
          };
        in
        [
          {
            trigger = "!G";
            action_display_name = "AI: ChatGPT Chat";
            model = "chatgpt-smart";
            parameters = openAIParams;
          }
          {
            trigger = "!A";
            action_display_name = "AI: Claude Chat";
            model = "claude-smart";
            parameters = openAIParams;
          }
          {
            trigger = "!P";
            action_display_name = "AI: Perplexity Chat";
            model = "perplexity-smart";
            parameters = openAIParams;
          }
        ];

      actions =
        let
          codeContext = ''
            Current file:
            Name: {FILE_NAME}
            Path: {FILE_PATH}
            URI: {FILE_URI}

            Workspace instructions:

            {CONTEXT}

            Surrounding file and workspace context:

            {CODE}
          '';
          selectedContext = action: ''
            ${codeContext}

            Selected code to ${action}:

            {SELECTED_TEXT}
          '';
          completionSystem = ''
            You are a code completion engine. Given code containing <CURSOR>, replace <CURSOR> with the most likely continuation.

            Only output the replacement code. Do not use markdown.
          '';
          actionSpecs = [
            {
              name = "Health Check";
              tier = "fast";
              maxContext = 1024;
              maxTokens = 20;
              system = "Return exactly this text and nothing else: LSP-AI is working.";
              user = "Health check";
            }
            {
              name = "Complete";
              tier = "smart";
              maxContext = lspAiActionContext;
              maxTokens = 10240;
              system = completionSystem;
              user = codeContext;
            }
            {
              name = "GIGA-Complete";
              tier = "gigabrain";
              maxContext = lspAiActionContext;
              maxTokens = 50000;
              reasoningEffort = "high";
              system = completionSystem;
              user = codeContext;
            }
            {
              name = "Refactor";
              tier = "smart";
              maxContext = lspAiActionContext;
              maxTokens = 20480;
              system = ''
                Refactor the selected code while preserving behavior.

                Return only the replacement code. Do not use markdown.
              '';
              user = selectedContext "refactor";
            }
            {
              name = "Fix";
              tier = "smart";
              maxContext = lspAiActionContext;
              maxTokens = 20480;
              system = ''
                Fix bugs, syntax errors, and obvious correctness issues in the selected code.

                Return only the corrected replacement code. Do not use markdown.
              '';
              user = selectedContext "fix";
            }
            {
              name = "Explain";
              tier = "smart";
              maxContext = lspAiActionContext;
              maxTokens = 20480;
              system = "Explain the selected code clearly and concisely.";
              user = selectedContext "explain";
            }
          ];
          providers = [
            {
              name = "ChatGPT";
              prefix = "chatgpt";
            }
            {
              name = "Claude";
              prefix = "claude";
            }
            {
              name = "Perplexity";
              prefix = "perplexity";
            }
          ];
          mkOpenAIParameters =
            spec:
            {
              max_context = spec.maxContext;
              max_tokens = spec.maxTokens;
              messages = [
                {
                  role = "system";
                  content = spec.system;
                }
                {
                  role = "user";
                  content = spec.user;
                }
              ];
            }
            // lib.optionalAttrs (spec ? reasoningEffort) {
              reasoning_effort = spec.reasoningEffort;
            };
          mkAction = provider: spec: {
            action_display_name = "AI: ${provider.name} ${spec.name}";
            model = "${provider.prefix}-${spec.tier}";
            parameters = mkOpenAIParameters spec;
          };
        in
        lib.concatMap (provider: map (mkAction provider) actionSpecs) providers;

      completion =
        let
          completionSystem = ''
            You are a code completion engine.
            Given code containing <CURSOR>, replace <CURSOR>
            with the most likely continuation.

            Only output the replacement code.
            Do not use markdown.
          '';
        in
        {
          model = "chatgpt-fast";
          parameters = {
            max_context = lspAiCompletionContext;
            max_tokens = 256;
            messages = [
              {
                role = "system";
                content = completionSystem;
              }
              {
                role = "user";
                content = ''
                  Current file:
                  Name: {FILE_NAME}
                  Path: {FILE_PATH}
                  URI: {FILE_URI}

                  Workspace instructions:

                  {CONTEXT}

                  Surrounding file and opened-file context:

                  {CODE}
                '';
              }
            ];
          };
        };
    };
  };
}
