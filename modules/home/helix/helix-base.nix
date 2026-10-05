{ lsp-ai-features }:
{
  enable = true;
  languages = {
    language = [
      {
        name = "rust";
        language-servers = [
          "codebook"
          "rust-analyzer"
          "discord-presence"
          lsp-ai-features
        ];
      }
      {
        name = "sway";
        language-servers = [
          lsp-ai-features
          "codebook"
          "forc"
          "discord-presence"
        ];
      }
      {
        name = "toml";
        language-servers = [
          lsp-ai-features
          "codebook"
          "taplo"
          "tombi"
          "discord-presence"
        ];
      }
      {
        name = "awk";
        language-servers = [
          lsp-ai-features
          "codebook"
          "awk-language-server"
          "discord-presence"
        ];
      }
      {
        name = "protobuf";
        language-servers = [
          lsp-ai-features
          "codebook"
          "buf"
          "pbkit"
          "protols"
          "discord-presence"
        ];
      }
      {
        name = "textproto";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "eiffel";
        language-servers = [
          lsp-ai-features
          "codebook"
          "eiffel-language-server"
          "discord-presence"
        ];
      }
      {
        name = "elixir";
        language-servers = [
          lsp-ai-features
          "codebook"
          "elixir-ls"
          "expert"
          "discord-presence"
        ];
      }
      {
        name = "fennel";
        language-servers = [
          lsp-ai-features
          "codebook"
          "fennel-ls"
          "discord-presence"
        ];
      }
      {
        name = "fish";
        language-servers = [
          lsp-ai-features
          "codebook"
          "fish-lsp"
          "discord-presence"
        ];
      }
      {
        name = "flatbuffers";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "mint";
        language-servers = [
          lsp-ai-features
          "codebook"
          "mint"
          "discord-presence"
        ];
      }
      {
        name = "mojo";
        language-servers = [
          lsp-ai-features
          "codebook"
          "mojo-lsp-server"
          "discord-presence"
        ];
      }
      {
        name = "janet";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "json";
        language-servers = [
          lsp-ai-features
          "codebook"
          "vscode-json-language-server"
          "discord-presence"
        ];
      }
      {
        name = "jsonc";
        language-servers = [
          lsp-ai-features
          "codebook"
          "vscode-json-language-server"
          "discord-presence"
        ];
      }
      {
        name = "json-ld";
        language-servers = [
          lsp-ai-features
          "codebook"
          "vscode-json-language-server"
          "discord-presence"
        ];
      }
      {
        name = "json5";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "c";
        language-servers = [
          lsp-ai-features
          "codebook"
          "clangd"
          "discord-presence"
        ];
      }
      {
        name = "cpp";
        language-servers = [
          lsp-ai-features
          "codebook"
          "clangd"
          "discord-presence"
        ];
      }
      {
        name = "crystal";
        language-servers = [
          lsp-ai-features
          "codebook"
          "crystalline"
          "ameba-ls"
          "discord-presence"
        ];
      }
      {
        name = "c-sharp";
        language-servers = [
          lsp-ai-features
          "codebook"
          "omnisharp"
          "csharp-ls"
          "discord-presence"
        ];
      }
      {
        name = "c3";
        language-servers = [
          lsp-ai-features
          "codebook"
          "c3-lsp"
          "discord-presence"
        ];
      }
      {
        name = "cel";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "spicedb";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "go";
        language-servers = [
          lsp-ai-features
          "codebook"
          "gopls"
          "golangci-lint-lsp"
          "discord-presence"
        ];
      }
      {
        name = "gomod";
        language-servers = [
          lsp-ai-features
          "codebook"
          "gopls"
          "discord-presence"
        ];
      }
      {
        name = "gotmpl";
        language-servers = [
          lsp-ai-features
          "codebook"
          "gopls"
          "discord-presence"
        ];
      }
      {
        name = "gowork";
        language-servers = [
          lsp-ai-features
          "codebook"
          "gopls"
          "discord-presence"
        ];
      }
      {
        name = "go-format-string";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "javascript";
        language-servers = [
          lsp-ai-features
          "codebook"
          "typescript-language-server"
          "discord-presence"
        ];
      }
      {
        name = "jsx";
        language-servers = [
          lsp-ai-features
          "codebook"
          "typescript-language-server"
          "discord-presence"
        ];
      }
      {
        name = "typescript";
        language-servers = [
          lsp-ai-features
          "codebook"
          "typescript-language-server"
          "discord-presence"
        ];
      }
      {
        name = "typespec";
        language-servers = [
          lsp-ai-features
          "codebook"
          "typespec"
          "discord-presence"
        ];
      }
      {
        name = "tsx";
        language-servers = [
          lsp-ai-features
          "codebook"
          "typescript-language-server"
          "discord-presence"
        ];
      }
      {
        name = "css";
        language-servers = [
          lsp-ai-features
          "codebook"
          "vscode-css-language-server"
          "discord-presence"
        ];
      }
      {
        name = "scss";
        language-servers = [
          lsp-ai-features
          "codebook"
          "vscode-css-language-server"
          "discord-presence"
        ];
      }
      {
        name = "less";
        language-servers = [
          lsp-ai-features
          "codebook"
          "vscode-css-language-server"
          "discord-presence"
        ];
      }
      {
        name = "html";
        language-servers = [
          lsp-ai-features
          "codebook"
          "vscode-html-language-server"
          "superhtml"
          "discord-presence"
        ];
      }
      {
        name = "htmldjango";
        language-servers = [
          lsp-ai-features
          "codebook"
          "djlsp"
          "vscode-html-language-server"
          "superhtml"
          "discord-presence"
        ];
      }
      {
        name = "python";
        language-servers = [
          lsp-ai-features
          "codebook"
          "ty"
          "ruff"
          "jedi"
          "pylsp"
          "discord-presence"
        ];
      }
      {
        name = "nickel";
        language-servers = [
          lsp-ai-features
          "codebook"
          "nls"
          "discord-presence"
        ];
      }
      {
        name = "nix";
        language-servers = [
          lsp-ai-features
          "codebook"
          "nil"
          "nixd"
          "discord-presence"
        ];
      }
      {
        name = "ruby";
        language-servers = [
          lsp-ai-features
          "codebook"
          "ruby-lsp"
          "solargraph"
          "discord-presence"
        ];
      }
      {
        name = "rshtml";
        language-servers = [
          lsp-ai-features
          "codebook"
          "rshtml-analyzer"
          "vscode-html-language-server"
          "superhtml"
          "discord-presence"
        ];
      }
      {
        name = "bash";
        language-servers = [
          lsp-ai-features
          "codebook"
          "bash-language-server"
          "discord-presence"
        ];
      }
      {
        name = "php";
        language-servers = [
          lsp-ai-features
          "codebook"
          "intelephense"
          "discord-presence"
        ];
      }
      {
        name = "php-only";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "blade";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "twig";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "latex";
        language-servers = [
          lsp-ai-features
          "codebook"
          "texlab"
          "discord-presence"
        ];
      }
      {
        name = "bibtex";
        language-servers = [
          lsp-ai-features
          "codebook"
          "texlab"
          "discord-presence"
        ];
      }
      {
        name = "lean";
        language-servers = [
          lsp-ai-features
          "codebook"
          "lean"
          "discord-presence"
        ];
      }
      {
        name = "lpf";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "julia";
        language-servers = [
          lsp-ai-features
          "codebook"
          "julia"
          "discord-presence"
        ];
      }
      {
        name = "java";
        language-servers = [
          lsp-ai-features
          "codebook"
          "jdtls"
          "discord-presence"
        ];
      }
      {
        name = "smali";
        language-servers = [
          lsp-ai-features
          "codebook"
          "smalisp"
          "discord-presence"
        ];
      }
      {
        name = "ledger";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "beancount";
        language-servers = [
          lsp-ai-features
          "codebook"
          "beancount-language-server"
          "discord-presence"
        ];
      }
      {
        name = "ocaml";
        language-servers = [
          lsp-ai-features
          "codebook"
          "ocamllsp"
          "discord-presence"
        ];
      }
      {
        name = "ocaml-interface";
        language-servers = [
          lsp-ai-features
          "codebook"
          "ocamllsp"
          "discord-presence"
        ];
      }
      {
        name = "dune";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "lua";
        language-servers = [
          lsp-ai-features
          "codebook"
          "lua-language-server"
          "discord-presence"
        ];
      }
      {
        name = "luap";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "lua-format-string";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "teal";
        language-servers = [
          lsp-ai-features
          "codebook"
          "teal-language-server"
          "discord-presence"
        ];
      }
      {
        name = "svelte";
        language-servers = [
          lsp-ai-features
          "codebook"
          "svelteserver"
          "discord-presence"
        ];
      }
      {
        name = "vue";
        language-servers = [
          lsp-ai-features
          "codebook"
          "vuels"
          "discord-presence"
        ];
      }
      {
        name = "yaml";
        language-servers = [
          lsp-ai-features
          "codebook"
          "yaml-language-server"
          "ansible-language-server"
          "discord-presence"
        ];
      }
      {
        name = "nestedtext";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "haskell";
        language-servers = [
          lsp-ai-features
          "codebook"
          "haskell-language-server"
          "discord-presence"
        ];
      }
      {
        name = "haskell-persistent";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "haskell-literate";
        language-servers = [
          lsp-ai-features
          "codebook"
          "haskell-language-server"
          "discord-presence"
        ];
      }
      {
        name = "purescript";
        language-servers = [
          lsp-ai-features
          "codebook"
          "purescript-language-server"
          "discord-presence"
        ];
      }
      {
        name = "zig";
        language-servers = [
          lsp-ai-features
          "codebook"
          "zls"
          "discord-presence"
        ];
      }
      {
        name = "picat";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "prolog";
        language-servers = [
          lsp-ai-features
          "codebook"
          "swipl"
          "discord-presence"
        ];
      }
      {
        name = "tsq";
        language-servers = [
          lsp-ai-features
          "codebook"
          "ts_query_ls"
          "discord-presence"
        ];
      }
      {
        name = "cmake";
        language-servers = [
          lsp-ai-features
          "codebook"
          "neocmakelsp"
          "cmake-language-server"
          "discord-presence"
        ];
      }
      {
        name = "make";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "glsl";
        language-servers = [
          lsp-ai-features
          "codebook"
          "glsl_analyzer"
          "glsld"
          "discord-presence"
        ];
      }
      {
        name = "penrose";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "perl";
        language-servers = [
          lsp-ai-features
          "codebook"
          "perlnavigator"
          "discord-presence"
        ];
      }
      {
        name = "pod";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "racket";
        language-servers = [
          lsp-ai-features
          "codebook"
          "racket"
          "discord-presence"
        ];
      }
      {
        name = "common-lisp";
        language-servers = [
          lsp-ai-features
          "codebook"
          "cl-lsp"
          "discord-presence"
        ];
      }
      {
        name = "comment";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "wesl";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "wgsl";
        language-servers = [
          lsp-ai-features
          "codebook"
          "wgsl-analyzer"
          "discord-presence"
        ];
      }
      {
        name = "llvm";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "llvm-mir";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "llvm-mir-yaml";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "tablegen";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "mail";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "markdown";
        language-servers = [
          lsp-ai-features
          "codebook"
          "marksman"
          "markdown-oxide"
          "rumdl"
          "discord-presence"
        ];
      }
      {
        name = "markdown-rustdoc";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "markdown.inline";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "djot";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "dart";
        language-servers = [
          lsp-ai-features
          "codebook"
          "dart"
          "discord-presence"
        ];
      }
      {
        name = "scala";
        language-servers = [
          lsp-ai-features
          "codebook"
          "metals"
          "discord-presence"
        ];
      }
      {
        name = "dockerfile";
        language-servers = [
          lsp-ai-features
          "codebook"
          "docker-langserver"
          "docker-language-server"
          "discord-presence"
        ];
      }
      {
        name = "docker-compose";
        language-servers = [
          lsp-ai-features
          "codebook"
          "docker-compose-langserver"
          "yaml-language-server"
          "docker-language-server"
          "discord-presence"
        ];
      }
      {
        name = "git-commit";
        language-servers = [
          lsp-ai-features
          "codebook"
          "commit-lsp"
          "discord-presence"
        ];
      }
      {
        name = "git-notes";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "github-action";
        language-servers = [
          lsp-ai-features
          "codebook"
          "actions-language-server"
          "yaml-language-server"
          "discord-presence"
        ];
      }
      {
        name = "diff";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "git-rebase";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "regex";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "git-config";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "git-attributes";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "git-ignore";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "graphql";
        language-servers = [
          lsp-ai-features
          "codebook"
          "graphql-language-service"
          "discord-presence"
        ];
      }
      {
        name = "elm";
        language-servers = [
          lsp-ai-features
          "codebook"
          "elm-language-server"
          "discord-presence"
        ];
      }
      {
        name = "iex";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "rescript";
        language-servers = [
          lsp-ai-features
          "codebook"
          "rescript-language-server"
          "discord-presence"
        ];
      }
      {
        name = "erlang";
        language-servers = [
          lsp-ai-features
          "codebook"
          {
            name = "erlang-ls";
            except-features = [
              "document-symbols"
              "workspace-symbols"
            ];
          }
          {
            name = "elp";
            except-features = [
              "document-symbols"
              "workspace-symbols"
            ];
          }
          "discord-presence"
        ];
      }
      {
        name = "kotlin";
        language-servers = [
          lsp-ai-features
          "codebook"
          "kotlin-language-server"
          "discord-presence"
        ];
      }
      {
        name = "hcl";
        language-servers = [
          lsp-ai-features
          "codebook"
          "terraform-ls"
          "discord-presence"
        ];
      }
      {
        name = "tfvars";
        language-servers = [
          lsp-ai-features
          "codebook"
          "terraform-ls"
          "discord-presence"
        ];
      }
      {
        name = "org";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "solidity";
        language-servers = [
          lsp-ai-features
          "codebook"
          "solc"
          "discord-presence"
        ];
      }
      {
        name = "gleam";
        language-servers = [
          lsp-ai-features
          "codebook"
          "gleam"
          "discord-presence"
        ];
      }
      {
        name = "quarto";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "ron";
        language-servers = [
          lsp-ai-features
          "codebook"
          "ron-lsp"
          "discord-presence"
        ];
      }
      {
        name = "robot";
        language-servers = [
          lsp-ai-features
          "codebook"
          "robotcode"
          "robotframework_ls"
          "discord-presence"
        ];
      }
      {
        name = "r";
        language-servers = [
          lsp-ai-features
          "codebook"
          "r"
          "discord-presence"
        ];
      }
      {
        name = "rmarkdown";
        language-servers = [
          lsp-ai-features
          "codebook"
          "r"
          "discord-presence"
        ];
      }
      {
        name = "swift";
        language-servers = [
          lsp-ai-features
          "codebook"
          "sourcekit-lsp"
          "discord-presence"
        ];
      }
      {
        name = "erb";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "ejs";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "eex";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "heex";
        language-servers = [
          lsp-ai-features
          "codebook"
          "elixir-ls"
          "expert"
          "discord-presence"
        ];
      }
      {
        name = "sql";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "gdscript";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "godot-resource";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "nu";
        language-servers = [
          lsp-ai-features
          "codebook"
          "nu-lsp"
          "nu-lint"
          "discord-presence"
        ];
      }
      {
        name = "vala";
        language-servers = [
          lsp-ai-features
          "codebook"
          "vala-language-server"
          "discord-presence"
        ];
      }
      {
        name = "hare";
        language-servers = [
          lsp-ai-features
          "codebook"
          {
            name = "hare-lsp";
            except-features = [
              "code-action"
              "completion"
              "format"
              "inlay-hints"
              "rename-symbol"
              "workspace-symbols"
            ];
          }
          "discord-presence"
        ];
      }
      {
        name = "devicetree";
        language-servers = [
          lsp-ai-features
          "codebook"
          "dts-lsp"
          "discord-presence"
        ];
      }
      {
        name = "cairo";
        language-servers = [
          lsp-ai-features
          "codebook"
          "cairo-language-server"
          "discord-presence"
        ];
      }
      {
        name = "cpon";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "odin";
        language-servers = [
          lsp-ai-features
          "codebook"
          "ols"
          "discord-presence"
        ];
      }
      {
        name = "meson";
        language-servers = [
          lsp-ai-features
          "codebook"
          "mesonlsp"
          "discord-presence"
        ];
      }
      {
        name = "sshclientconfig";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "scheme";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "v";
        language-servers = [
          lsp-ai-features
          "codebook"
          "vlang-language-server"
          "discord-presence"
        ];
      }
      {
        name = "verilog";
        language-servers = [
          lsp-ai-features
          "codebook"
          "verible-verilog-ls"
          "discord-presence"
        ];
      }
      {
        name = "systemverilog";
        language-servers = [
          lsp-ai-features
          "codebook"
          "svlangserver"
          "verible-verilog-ls"
          "discord-presence"
        ];
      }
      {
        name = "edoc";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "jsdoc";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "openscad";
        language-servers = [
          lsp-ai-features
          "codebook"
          "openscad-lsp"
          "discord-presence"
        ];
      }
      {
        name = "prisma";
        language-servers = [
          lsp-ai-features
          "codebook"
          "prisma-language-server"
          "discord-presence"
        ];
      }
      {
        name = "clojure";
        language-servers = [
          lsp-ai-features
          "codebook"
          "clojure-lsp"
          "discord-presence"
        ];
      }
      {
        name = "starlark";
        language-servers = [
          lsp-ai-features
          "codebook"
          "starpls"
          "discord-presence"
        ];
      }
      {
        name = "elvish";
        language-servers = [
          lsp-ai-features
          "codebook"
          "elvish"
          "discord-presence"
        ];
      }
      {
        name = "idris";
        language-servers = [
          lsp-ai-features
          "codebook"
          "idris2-lsp"
          "discord-presence"
        ];
      }
      {
        name = "fortran";
        language-servers = [
          lsp-ai-features
          "codebook"
          "fortls"
          "discord-presence"
        ];
      }
      {
        name = "ungrammar";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "dot";
        language-servers = [
          lsp-ai-features
          "codebook"
          "dot-language-server"
          "discord-presence"
        ];
      }
      {
        name = "cue";
        language-servers = [
          lsp-ai-features
          "codebook"
          "cuelsp"
          "discord-presence"
        ];
      }
      {
        name = "slang";
        language-servers = [
          lsp-ai-features
          "codebook"
          "slangd"
          "discord-presence"
        ];
      }
      {
        name = "slint";
        language-servers = [
          lsp-ai-features
          "codebook"
          "slint-lsp"
          "discord-presence"
        ];
      }
      {
        name = "task";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "xit";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "esdl";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "pascal";
        language-servers = [
          lsp-ai-features
          "codebook"
          "pasls"
          "discord-presence"
        ];
      }
      {
        name = "sml";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "jsonnet";
        language-servers = [
          lsp-ai-features
          "codebook"
          "jsonnet-language-server"
          "discord-presence"
        ];
      }
      {
        name = "ada";
        language-servers = [
          lsp-ai-features
          "codebook"
          "ada-language-server"
          "discord-presence"
        ];
      }
      {
        name = "astro";
        language-servers = [
          lsp-ai-features
          "codebook"
          "astro-ls"
          "discord-presence"
        ];
      }
      {
        name = "bass";
        language-servers = [
          lsp-ai-features
          "codebook"
          "bass"
          "discord-presence"
        ];
      }
      {
        name = "wat";
        language-servers = [
          lsp-ai-features
          "codebook"
          "wasm-language-tools"
          "discord-presence"
        ];
      }
      {
        name = "wast";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "d";
        language-servers = [
          lsp-ai-features
          "codebook"
          "serve-d"
          "discord-presence"
        ];
      }
      {
        name = "vhs";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "kdl";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "xml";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "dtd";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "wit";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "env";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "systemd";
        language-servers = [
          lsp-ai-features
          "codebook"
          "systemd-lsp"
          "discord-presence"
        ];
      }
      {
        name = "ini";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "inko";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "bicep";
        language-servers = [
          lsp-ai-features
          "codebook"
          "bicep-langserver"
          "discord-presence"
        ];
      }
      {
        name = "qml";
        language-servers = [
          lsp-ai-features
          "codebook"
          "qmlls"
          "discord-presence"
        ];
      }
      {
        name = "mermaid";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "matlab";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "ponylang";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "dhall";
        language-servers = [
          lsp-ai-features
          "codebook"
          "dhall-lsp-server"
          "discord-presence"
        ];
      }
      {
        name = "sage";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "msbuild";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "pem";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "passwd";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "hosts";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "uxntal";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "yuck";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "prql";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "po";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "nasm";
        language-servers = [
          lsp-ai-features
          "codebook"
          "asm-lsp"
          "discord-presence"
        ];
      }
      {
        name = "gas";
        language-servers = [
          lsp-ai-features
          "codebook"
          "asm-lsp"
          "discord-presence"
        ];
      }
      {
        name = "rst";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "capnp";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "smithy";
        language-servers = [
          lsp-ai-features
          "codebook"
          "cs"
          "discord-presence"
        ];
      }
      {
        name = "hdl";
        language-servers = [
          lsp-ai-features
          "codebook"
          "hdls"
          "discord-presence"
        ];
      }
      {
        name = "vhdl";
        language-servers = [
          lsp-ai-features
          "codebook"
          "vhdl_ls"
          "discord-presence"
        ];
      }
      {
        name = "rego";
        language-servers = [
          lsp-ai-features
          "codebook"
          "regols"
          "discord-presence"
        ];
      }
      {
        name = "nim";
        language-servers = [
          lsp-ai-features
          "codebook"
          "nimlangserver"
          "discord-presence"
        ];
      }
      {
        name = "cabal";
        language-servers = [
          lsp-ai-features
          "codebook"
          "haskell-language-server"
          "discord-presence"
        ];
      }
      {
        name = "hurl";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "markdoc";
        language-servers = [
          lsp-ai-features
          "codebook"
          "markdoc-ls"
          "discord-presence"
        ];
      }
      {
        name = "opencl";
        language-servers = [
          lsp-ai-features
          "codebook"
          "clangd"
          "discord-presence"
        ];
      }
      {
        name = "just";
        language-servers = [
          lsp-ai-features
          "codebook"
          "just-lsp"
          "discord-presence"
        ];
      }
      {
        name = "gn";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "blueprint";
        language-servers = [
          lsp-ai-features
          "codebook"
          "blueprint-compiler"
          "discord-presence"
        ];
      }
      {
        name = "forth";
        language-servers = [
          lsp-ai-features
          "codebook"
          "forth-lsp"
          "discord-presence"
        ];
      }
      {
        name = "fsharp";
        language-servers = [
          lsp-ai-features
          "codebook"
          "fsharp-ls"
          "discord-presence"
        ];
      }
      {
        name = "t32";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "webc";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "typst";
        language-servers = [
          lsp-ai-features
          "codebook"
          "tinymist"
          "discord-presence"
        ];
      }
      {
        name = "nunjucks";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "jinja";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "jjconfig";
        language-servers = [
          lsp-ai-features
          "codebook"
          "taplo"
          "tombi"
          "discord-presence"
        ];
      }
      {
        name = "jjdescription";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "jjrevset";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "jjtemplate";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "miseconfig";
        language-servers = [
          lsp-ai-features
          "codebook"
          "taplo"
          "tombi"
          "discord-presence"
        ];
      }
      {
        name = "jq";
        language-servers = [
          lsp-ai-features
          "codebook"
          "jq-lsp"
          "discord-presence"
        ];
      }
      {
        name = "wren";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "unison";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "todotxt";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "strace";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "gemini";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "agda";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "templ";
        language-servers = [
          lsp-ai-features
          "codebook"
          "templ"
          "discord-presence"
        ];
      }
      {
        name = "dbml";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "bitbake";
        language-servers = [
          lsp-ai-features
          "codebook"
          "bitbake-language-server"
          "discord-presence"
        ];
      }
      {
        name = "log";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "hoon";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "hocon";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "koka";
        language-servers = [
          lsp-ai-features
          "codebook"
          "koka"
          "discord-presence"
        ];
      }
      {
        name = "tact";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "pkl";
        language-servers = [
          lsp-ai-features
          "codebook"
          "pkl-lsp"
          "discord-presence"
        ];
      }
      {
        name = "groovy";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "fidl";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "powershell";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "ld";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "hy";
        language-servers = [
          lsp-ai-features
          "codebook"
          "hyuga"
          "discord-presence"
        ];
      }
      {
        name = "hyprlang";
        language-servers = [
          lsp-ai-features
          "codebook"
          "hyprls"
          "discord-presence"
        ];
      }
      {
        name = "tcl";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "supercollider";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "rpmspec";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "pkgbuild";
        language-servers = [
          lsp-ai-features
          "codebook"
          "termux-language-server"
          {
            name = "bash-language-server";
            except-features = [ "diagnostics" ];
          }
          "discord-presence"
        ];
      }
      {
        name = "helm";
        language-servers = [
          lsp-ai-features
          "codebook"
          "helm_ls"
          "discord-presence"
        ];
      }
      {
        name = "glimmer";
        language-servers = [
          lsp-ai-features
          "codebook"
          "ember-language-server"
          "discord-presence"
        ];
      }
      {
        name = "ohm";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "earthfile";
        language-servers = [
          lsp-ai-features
          "codebook"
          "earthlyls"
          "discord-presence"
        ];
      }
      {
        name = "adl";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "ldif";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "xtc";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "move";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "pest";
        language-servers = [
          lsp-ai-features
          "codebook"
          "pest-language-server"
          "discord-presence"
        ];
      }
      {
        name = "elisp";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "gjs";
        language-servers = [
          lsp-ai-features
          "codebook"
          {
            name = "typescript-language-server";
            except-features = [
              "format"
              "diagnostics"
            ];
          }
          "vscode-eslint-language-server"
          "ember-language-server"
          "discord-presence"
        ];
      }
      {
        name = "gts";
        language-servers = [
          lsp-ai-features
          "codebook"
          {
            name = "typescript-language-server";
            except-features = [
              "format"
              "diagnostics"
            ];
          }
          "vscode-eslint-language-server"
          "ember-language-server"
          "discord-presence"
        ];
      }
      {
        name = "gherkin";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "thrift";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "circom";
        language-servers = [
          lsp-ai-features
          "codebook"
          "circom-lsp"
          "discord-presence"
        ];
      }
      {
        name = "snakemake";
        language-servers = [
          lsp-ai-features
          "codebook"
          "pylsp"
          "discord-presence"
        ];
      }
      {
        name = "cylc";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "quint";
        language-servers = [
          lsp-ai-features
          "codebook"
          "quint-language-server"
          "discord-presence"
        ];
      }
      {
        name = "spade";
        language-servers = [
          lsp-ai-features
          "codebook"
          "spade-language-server"
          "discord-presence"
        ];
      }
      {
        name = "amber";
        language-servers = [
          lsp-ai-features
          "codebook"
          "amber-lsp"
          "discord-presence"
        ];
      }
      {
        name = "koto";
        language-servers = [
          lsp-ai-features
          "codebook"
          "koto-ls"
          "discord-presence"
        ];
      }
      {
        name = "gpr";
        language-servers = [
          lsp-ai-features
          "codebook"
          "ada-gpr-language-server"
          "discord-presence"
        ];
      }
      {
        name = "vento";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "nginx";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "codeql";
        language-servers = [
          lsp-ai-features
          "codebook"
          "codeql"
          "discord-presence"
        ];
      }
      {
        name = "gren";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "ghostty";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "tera";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "fga";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "csv";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "yara";
        language-servers = [
          lsp-ai-features
          "codebook"
          "yls"
          "discord-presence"
        ];
      }
      {
        name = "ink";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "sourcepawn";
        language-servers = [
          lsp-ai-features
          "codebook"
          "sourcepawn-studio"
          "discord-presence"
        ];
      }
      {
        name = "vim";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "tlaplus";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "werk";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "debian";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "pug";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "dunstrc";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "rust-format-args";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "rust-format-args-macro";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "clarity";
        language-servers = [
          lsp-ai-features
          "codebook"
          "clarinet"
          "discord-presence"
        ];
      }
      {
        name = "alloy";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "luau";
        language-servers = [
          lsp-ai-features
          "codebook"
          "luau"
          "discord-presence"
        ];
      }
      {
        name = "caddyfile";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "properties";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "robots.txt";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "pip-requirements";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "kconfig";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "doxyfile";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "cross-config";
        language-servers = [
          lsp-ai-features
          "codebook"
          "taplo"
          "tombi"
          "discord-presence"
        ];
      }
      {
        name = "git-cliff-config";
        language-servers = [
          lsp-ai-features
          "codebook"
          "taplo"
          "tombi"
          "discord-presence"
        ];
      }
      {
        name = "cython";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "shellcheckrc";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "strictdoc";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "docker-bake";
        language-servers = [
          lsp-ai-features
          "codebook"
          "docker-language-server"
          "discord-presence"
        ];
      }
      {
        name = "gitlab-ci";
        language-servers = [
          lsp-ai-features
          "codebook"
          "yaml-language-server"
          "gitlab-ci-ls"
          "discord-presence"
        ];
      }
      {
        name = "wikitext";
        language-servers = [
          lsp-ai-features
          "codebook"
          "wikitext-lsp"
          "discord-presence"
        ];
      }
      {
        name = "slisp";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "nearley";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "kcl";
        language-servers = [
          lsp-ai-features
          "codebook"
          "kcl-lsp"
          "discord-presence"
        ];
      }
      {
        name = "bovex";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "haxe";
        language-servers = [
          lsp-ai-features
          "codebook"
          "haxe-language-server"
          "discord-presence"
        ];
      }
      {
        name = "basic";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "freebasic";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "scfg";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "ripple";
        language-servers = [
          lsp-ai-features
          "codebook"
          "ripple-lsp"
          "discord-presence"
        ];
      }
      {
        name = "woodpecker-ci";
        language-servers = [
          lsp-ai-features
          "codebook"
          "yaml-language-server"
          "discord-presence"
        ];
      }
      {
        name = "chuck";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "qmv";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "klog";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
      {
        name = "tilt";
        language-servers = [
          lsp-ai-features
          "codebook"
          "tilt"
          "discord-presence"
        ];
      }
      {
        name = "gnuplot";
        language-servers = [
          lsp-ai-features
          "codebook"
          "discord-presence"
        ];
      }
    ];
  };
}
