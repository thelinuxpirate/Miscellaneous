{
  extraConfigLua = builtins.readFile ./../lua/plugins.lua;

  plugins = {
    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        window = {
          completion.border = ["╭" "─" "╮" "│" "╯" "─" "╰" "│"];
          documentation.border = ["╭" "─" "╮" "│" "╯" "─" "╰" "│"];
        };

        completion.completeopt = "noselect";

        performance = {
          debounce = 60;
          fetchingTimeout = 200;
          maxViewEntries = 30;
        };

        formatting.fields = ["kind" "abbr" "menu"];

        sources = [
          { name = "path"; }
          { name = "nvim_lsp"; }
          { name = "buffer"; }
          { name = "emoji"; }
        ];
      };
    };

    cmp-buffer.enable = true;
    cmp-calc.enable = true;
    cmp-dap.enable = true;
    cmp-dictionary.enable = true;
    cmp-emoji.enable = true;
    cmp-git.enable = true;
    cmp-latex-symbols.enable = true;
    cmp-npm.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-path.enable = true;
    cmp-rg.enable = true;
    cmp-spell.enable = true;
    cmp-treesitter.enable = true;

    lspkind = {
      enable = true;
      cmp.enable = true;
    };

    lsp = {
      enable = true;

      servers = {
        arduino_language_server.enable = true;
        asm_lsp.enable = true;
        clangd.enable = true;
        cmake.enable = true;
        cssls.enable = true;
        elixirls.enable = true;
        gdscript = {
          enable = true;
          package = null;
        };
        gopls.enable = true;
        html.enable = true;
        htmx.enable = true;
        julials = {
          enable = true;
          package = null;
        };
        lua_ls.enable = true;
        mdx_analyzer = {
          enable = true;
          package = null;
        };
        nim_langserver.enable = true;
        nixd.enable = true;
        perlpls.enable = true;
        pylsp.enable = true;
        tailwindcss.enable = true;
        texlab.enable = true;
        zls.enable = true;

        rust_analyzer = {
          enable = true;

          installCargo = false;
          installRustc = false;

          settings = {
            check = {
              command = "clippy";
              invocationLocation = "workspace";
            };

            diagnostics.styleLints.enable = true;
            rustfmt.rangeFormatting.enable = true;
          };
        };
      };
    };

    treesitter = {
      enable = true;
      folding = true;
      settings = {
        highlight.enable = true;
      };
    };

    treesitter-textobjects.enable = true;
  };
}
