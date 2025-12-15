# Util Plugins
{
  plugins = {
    arrow = {
      enable = true;
      settings.leader_key = "'";
    };
    auto-session.enable = true;
    chadtree.enable = true;

    nvim-autopairs.enable = true;

    telescope = {
      enable = true;
      extensions = {
        file-browser = {
          enable = true;
          settings = {
            theme = "ivy";

            hijack_netrw = false;
            grouped = true;
            prompt_path = true;
            hidden = {
              file_browser = true;
              folder_browser = true;
            };

            mappings.n = {
              "<M-j>" = "move_selection_next";
              "<M-k>" = "move_selection_previous";
            };
          };
        };
        fzf-native.enable = true;
        media-files.enable = true;
        undo.enable = true;
      };
    };

    trim.enable = true;
    quickmath.enable = true;
    lazygit.enable = true;
    markdown-preview.enable = true;
    neorg.enable = true;
    otter.enable = true;
    nix.enable = true;
    nix-develop.enable = true;

    oil = {
      enable = true;
    };

    presence-nvim = {
      enable = true;
      enableLineNumber = true;
      debounceTimeout = .1;
      showTime = true;

      fileExplorerText = "Zooming through %s";
      gitCommitText = "TRONGs on Git again...";
      neovimImageText = "The Declarative Editor";
    };
  };
}
