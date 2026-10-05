{ enable-ai ? true }:
{
  config,
  pkgs,
  inputs,
  extra-inputs,
  machine-settings,
  lib,
  secrets,
  ...
}:
let
  lsp-ai =
    if enable-ai then
      import ./helix/lsp-ai.nix { inherit pkgs lib secrets; }
    else
      {
        features = "";
        lsp = { };
        lspAiPackage = null;
      };

  tree-sitter-idris = pkgs.fetchgit {
    url = "https://github.com/kayhide/tree-sitter-idris.git";
    rev = "c56a25cf57c68ff929356db25505c1cc4c7820f6";
    sha256 = "1nd8flcmkknhg01l4l50i6y1haqkn3qhxj3z6ljjr1d389pk3q38";
  };

  fetchCog =
    {
      owner,
      repo,
      rev ? "main",
      hash,
    }:
    {
      source = pkgs.fetchFromGitHub {
        inherit
          owner
          repo
          rev
          hash
          ;
      };

      recursive = true;
    };

  helixBase = import ./helix/helix-base.nix { lsp-ai-features = lsp-ai.features; };

  isLspAiServer =
    server: if builtins.isAttrs server then (server.name or null) == "lsp-ai" else server == "lsp-ai";

  # Empty-string entries happen when enable-ai = false: lsp-ai.features is
  # replaced with "" so it type-checks as a language-servers list element.
  # Drop them here so Helix doesn't warn about an unknown "" server.
  isEmptyServer =
    server: if builtins.isAttrs server then (server.name or null) == "" else server == "";

  preferNormalLanguageServers =
    servers:
    let
      kept = builtins.filter (server: !(isEmptyServer server)) servers;
      normalServers = builtins.filter (server: !(isLspAiServer server)) kept;
      lspAiServers = builtins.filter isLspAiServer kept;
    in
    normalServers ++ lspAiServers;

  mergeLanguage =
    acc: language:
    let
      existing = if builtins.hasAttr language.name acc then builtins.getAttr language.name acc else { };
      languageServers = (existing.language-servers or [ ]) ++ (language.language-servers or [ ]);
      merged = lib.recursiveUpdate existing language;
      mergedWithLanguageServers =
        if languageServers == [ ] then
          merged
        else
          merged
          // {
            language-servers = preferNormalLanguageServers (lib.unique languageServers);
          };
    in
    acc
    // {
      "${language.name}" = mergedWithLanguageServers;
    };

  # Home Manager list values replace during recursiveUpdate, so merge language
  # entries by name before applying the local Helix overrides.
  mergeLanguageLists =
    baseLanguages: overrideLanguages:
    let
      mergedByName = builtins.foldl' mergeLanguage (builtins.foldl' mergeLanguage { }
        baseLanguages
      ) overrideLanguages;
      orderedNames = lib.unique (
        (map (language: language.name) baseLanguages) ++ (map (language: language.name) overrideLanguages)
      );
    in
    map (name: builtins.getAttr name mergedByName) orderedNames;

in
{
  assertions = [
    {
      assertion = machine-settings.input-settings.helix-master;
      message = "helix-master must be enabled in input-settings";
    }
  ];

  home.packages = with pkgs; [
    yazi
    codebook
    markdown-oxide
    steel
    nixd
    nixfmt
    vscode-extensions.vadimcn.vscode-lldb.adapter
    crates-lsp
    taplo
    jdt-language-server
    ant
    tinymist
    (import ../pkgs/ccase.nix {
      inherit inputs;
      system = pkgs.stdenv.hostPlatform.system;
    })
  ]
  ++ lib.optional (lsp-ai.lspAiPackage != null) lsp-ai.lspAiPackage;

  home.sessionVariables = {
    OPENAI_API_KEY = secrets.openai_key ? "";
    PERPLEXITY_API_KEY = secrets.perplexity_key ? "";
  };

  xdg.configFile."helix/runtime/queries/idris".source = "${tree-sitter-idris}/queries";

  xdg.configFile."helix/init.scm".source = ./helix/helix-plugins/init.scm;

  xdg.dataFile = {
    "steel/cogs/switcheroo" = fetchCog {
      owner = "godalming123";
      repo = "switcheroo.hx";
      rev = "8b834db5d068d941ed8f8e1e84255d73b9cfd193";
      hash = "sha256-WHfIA089jeW63gI31p0oMauT0h+eaULw4h84tbfdaV4=";
    };

    "steel/cogs/devicons" = fetchCog {
      owner = "ivoronin";
      repo = "devicons.hx";
      rev = "6e847c1e00850d98d69aca07e63cc81417a6959c";
      hash = "sha256-CbT3erUjBFn/WWzv1NFbkFE0B/uhofNhPTK5LlS8R+Q=";
    };

    "steel/cogs/grove" = fetchCog {
      owner = "ivoronin";
      repo = "grove.hx";
      rev = "50a64de161ca52e7ed5745335764fab2eded3c7d";
      hash = "sha256-mDwKzRCTA9Z7KATzWLMj/XGdkMJrh/weZ4717Ma5dwE=";
    };

    "steel/cogs/smooth-scroll" = fetchCog {
      owner = "thomasschafer";
      repo = "smooth-scroll.hx";
      rev = "1ed8b088e465fb139389c36ad158ba4a2d9e1bbc";
      hash = "sha256-4lxGZrT4cEcg3jqae3uJGGGCSy4WeVZeJ0hIApMb7jY=";
    };

    "steel/cogs/showkeys" = fetchCog {
      owner = "HeitorAugustoLN";
      repo = "showkeys.hx";
      rev = "5996e1ab8df03ac5a708bc569a4bed3791af60bf";
      hash = "sha256-9oLpZKJ6ZStwr4ijRI2XlUP8fvlR2Boy3qVPW4+YIgQ=";
    };

    "steel/cogs/notify" = fetchCog {
      owner = "chuwy";
      repo = "notify.hx";
      rev = "0a328073e6d3e5041346374ae747c275ab8ce746";
      hash = "sha256-shKUVnJw2j0yYO+mTHsKie+d1VrJGWDTRul+PTpqlhs=";
    };
  };

  programs.helix = lib.recursiveUpdate helixBase {
    enable = true;
    package = extra-inputs.helix-master.packages."x86_64-linux".default;

    themes = {
      matteblack = import ./helix/themes/matteblack.nix;
      catppuccin_latte_semantic = import ./helix/themes/catppuccin-latte.nix;
      catppuccin_frappe_semantic = import ./helix/themes/catppuccin-frappe.nix;
    };

    settings = {
      keys = {
        select = {
          up = "extend_line_up";
          down = "extend_line_down";
          left = "extend_char_left";
          right = "extend_char_right";

          g = {
            "/" = ":flash-forward";
            "?" = ":flash-backward";
          };

          "space" = {
            c = {
              "p" = ":pipe ccase --to pascal";
              "c" = ":pipe ccase --to camel";
              "C" = ":pipe ccase --to upper";
              "k" = ":pipe ccase --to kebab";
              "s" = ":pipe ccase --to snake";
              "S" = ":pipe ccase --to screamingsnake";
            };
          };
        };
        normal = {
          up = "move_line_up";
          down = "move_line_down";
          left = "move_char_left";
          right = "move_char_right";

          "C-j" = [
            "extend_to_line_bounds"
            "delete_selection"
            "paste_after"
          ];
          "C-k" = [
            "extend_to_line_bounds"
            "delete_selection"
            "move_line_up"
            "paste_before"
          ];

          "A-up" = [
            "extend_to_line_bounds"
            "delete_selection"
            "move_line_up"
            "paste_before"
          ];
          "A-down" = [
            "extend_to_line_bounds"
            "delete_selection"
            "paste_after"
          ];

          g = {
            "/" = ":flash-forward";
            "?" = ":flash-backward";
          };
          "space" = {
            c = {
              "p" = ":pipe ccase --to pascal";
              "c" = ":pipe ccase --to camel";
              "C" = ":pipe ccase --to upper";
              "k" = ":pipe ccase --to kebab";
              "s" = ":pipe ccase --to snake";
            };

            "space" = ":switcheroo";
            f = "file_picker_in_current_directory";
            F = "file_picker";
            p = "toggle_fold";
            e = [
              ":sh rm -f /tmp/unique-file-h21a434"
              ":insert-output yazi \"%{buffer_name}\" --chooser-file=/tmp/unique-file-h21a434"
              ":sh printf \"\\x1b[?1049h\\x1b[?2004h\" > /dev/tty"
              ":open %sh{cat /tmp/unique-file-h21a434}"
              ":redraw"
              ":set mouse false"
              ":set mouse true"
            ];
          };
        };
      };

      theme = "catppuccin_latte_semantic";

      icons = {
        vcs = {
          enabled = true;
          icon = "";
        };

        fs = {
          enabled = true;
        }
        // import ./helix/helix-mime-icons.nix;

        diagnostic = {
          enabled = true;
          hint = "○";
          info = "●";
          warning = "▲";
          error = "■";
        };

        ui = {
          statusline.separator = "";
          virtual = {
            nbsp = "⍽";
            tab = "→";
            newline = "↲";
          };
        };
      };

      editor = {
        soft-wrap = {
          enable = true;
          max-indent-retain = 0;
        };

        breadcrumb = {
          enable = true;

          path = "file";
        };

        inline-blame = {
          show = "cursor-line";
          auto-fetch = true;
        };

        auto-pairs = {
          "(" = ")";
          "{" = "}";
          "[" = "]";
          "\"" = "\"";
          "`" = "`";
        };

        # evil = false; # My text editor being nice boi is really nice!
        line-number = "relative";
        color-modes = true;
        true-color = true;
        rainbow-brackets = true;

        cursor-shape = {
          normal = "block";
          insert = "bar";
          select = "underline";
        };

        whitespace.render = "all";
        # whitespace.characters = {
        #   nbsp = "⍽";
        #   tab = "→";
        #   newline = "↲";
        # };

        lsp = {
          display-messages = true;
          display-inlay-hints = true;
        };

        gutters = [
          "diagnostics"
          "line-numbers"
          "spacer"
          "diff"
        ];
        statusline = {
          # mode-separator = "";
          # separator = "";
          left = [
            "mode"
            "selections"
            "spinner"
            "file-name"
            "total-line-numbers"
          ];
          center = [ ];
          right = [
            "diagnostics"
            "file-encoding"
            "file-line-ending"
            "file-type"
            "position-percentage"
            "position"
          ];
          mode = {
            normal = "NORMAL";
            insert = "INSERT";
            select = "SELECT";
          };
        };

        indent-guides = {
          render = true;
          rainbow = true;
          skip-levels = 1;
          rainbow-ident = "dim";
          character = "⸽";
        };
        rulers = [
          80
          120
        ];
      };
    };
    languages = {
      grammar = [
        {
          name = "idris";
          source = {
            path = "${tree-sitter-idris}";
          };
        }
      ];
      language = mergeLanguageLists helixBase.languages.language [
        {
          name = "markdown";
          comment-tokens = [
            "- [ ]"
            "-"
            "+"
            "*"
            ">"
          ];
          language-servers = [
            "codebook"
            lsp-ai.features
          ];
        }
        {
          name = "java";
          comment-tokens = [
            "//"
            "*"
          ];
          indent = {
            tab-width = 4;
            unit = "	";
          };
          language-servers = [
            "codebook"
            "jdtls"
            "discord-presence"
            lsp-ai.features
          ];
        }
        {
          name = "rust";
          file-types = [
            "oak"
            "rs"
          ]; # this is for oak lang which doesn't have it's own highlighting but looks like rust
          auto-format = true;
          language-servers = [
            "codebook"
            "rust-analyzer"
            "discord-presence"
            lsp-ai.features
          ];

          # format-on-type-trigger-characters = ["{" "}" "("  ")"];

          debugger = {
            command = "codelldb";
            name = "codelldb";
            "port-arg" = "--port {}";
            transport = "tcp";

            templates = [
              {
                name = "binary";
                request = "launch";

                completion = [
                  {
                    completion = "filename";
                    name = "binary";
                  }
                ];

                args = {
                  program = "{0}";
                  runInTerminal = true;
                };
              }
            ];
          };
        }
        {
          name = "c";
          file-types = [
            "c"
            "h"
            "cpp"
            "hpp"
          ];
          language-servers = [ lsp-ai.features ];
          indent = {
            tab-width = 4;
            unit = "    ";
          };
        }
        {
          name = "cobol";
          file-types = [ "cob" ];
          scope = "main.cob";
          comment-token = "*";
          roots = [ "main.cob" ];
          language-servers = [ lsp-ai.features ];
          indent = {
            tab-width = 2;
            unit = "  ";
          };
          rulers = [
            7
            12
            72
          ];
        }
        {
          name = "lua";
          file-types = [ "lua" ];
          roots = [ ".git/" ];
          language-servers = [
            "lua-language-server"
            lsp-ai.features
          ];
          auto-format = true;
          indent = {
            tab-width = 4;
            unit = "    ";
          };
        }
        {
          name = "java";
          indent = {
            tab-width = 4;
            unit = "	";
          };
        }
        {
          name = "idris";
          scope = "source.idris";
          injection-regex = "idris";
          file-types = [ "idr" ];
          comment-token = "--";
          indent = {
            tab-width = 2;
            unit = "  ";
          };
          language-servers = [
            "idris2-lsp"
            lsp-ai.features
          ];
          grammar = "idris";
        }
        {
          name = "nix";
          language-servers = [
            "codebook"
            "nixd"
            lsp-ai.features
          ];
        }
        {
          name = "toml";
          language-servers = [
            "crates-lsp"
            "taplo"
            lsp-ai.features
          ];
          formatter = {
            command = "taplo";
            args = [
              "fmt"
              "-"
            ];
          };
        }
      ];
      language-server.idris2-lsp = {
        command = "${pkgs.idris2Packages.idris2Lsp}/bin/idris2-lsp";
      };
      language-server.crates-lsp = {
        command = "crates-lsp";
        except-features = [ "format" ];
      };

      language-server."discord-presence" = {
        command = "discord-presence";
      };
      language-server.codebook = {
        command = "${pkgs.codebook}/bin/codebook-lsp";
        args = [ "serve" ];
      };
      language-server."lua-language-server" = {
        command = "lua-language-server";
        config = {
          Lua = {
            workspace = {
              library = {
                "~/FactorioModding/factorio/doc-html/factorio" = true;
              };
            };
            format = {
              defaultConfig = {
                # call_arg_parentheses = "remove_table_only";
                max_line_length = "999999";
                # space_around_table_field_list = "false";
                indent_style = "space";
                indent_size = "4";
                # space_around_table_append_operator = "false";
                # space_inside_square_brackets = "false";
                quote_style = "double";
              };
            };
          };
        };
      };
      language-server.jdtls = {
        config = {
          "java.inlayHints.parameterNames.enabled" = "all";
          "java.inlayHints.variableTypes.enabled" = true;
        };
      };
      language-server.rust-analyzer = {
        config = {
          cargo = {
            allFeatures = true;
            cfgs = [ "doctest" ];
            buildScripts = {
              enable = true;
            };
          };

          procMacro = {
            enable = true;
            attributes = {
              enable = true;
            };
          };

          hover = {
            documentation = {
              keywords = {
                enable = false;
              };
            };
          };

          inlayHints = {
            closureReturnTypeHints = {
              enable = "with_block";
            };
            closingBraceHints = {
              minLines = 5;
            };
            closureStyle = "rust_analyzer";
            genericParameterHints = {
              type = {
                enable = true;
              };
            };
            rangeExclusiveHints = {
              enable = true;
            };
            closureCaptureHints = {
              enable = true;
            };
          };

          typing = {
            triggerChars = ".=<>{(+";
          };

          assist = {
            preferSelf = true;
          };

          checkOnSave = true;

          diagnostics = {
            enable = true;
          };

          semanticHighlighting = {
            punctuation = {
              separate = {
                macroBang = true;
              };
              specialization = {
                enable = true;
              };
              enable = true;
            };
          };

          workspace = {
            symbol = {
              search = {
                limit = 1024;
              };
            };
          };

          showUnlinkedFileNotification = false;

          completion = {
            fullFunctionSignatures = {
              enable = true;
            };
            autoIter = {
              enable = false;
            };
            autoImport = {
              enable = true;
            };
            termSearch = {
              enable = true;
            };
            autoself = {
              enable = true;
            };
            privateEditable = {
              enable = true;
            };
          };

          imports = {
            granularity = "group";
          };

          cfg = {
            setTest = true;
            setDoctest = true;
          };

          check = {
            command = "clippy";
          };
        };
      };
    }
    // lib.optionalAttrs enable-ai {
      language-server."lsp-ai" = lsp-ai.lsp;
    };
  };
}