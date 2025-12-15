# Visual Plugins
{
  plugins = {
    alpha = {
      enable = true;
      theme = "dashboard";
    };

    lualine = {
      enable = true;
      settings = {
        extensions = [ "oil" ];
        options.theme = "nightfly";
      };
    };

    web-devicons.enable = true;
    indent-blankline.enable = true;
    conform-nvim.enable = true;
    comment.enable = true;
    cursorline.enable = true;
    nvim-colorizer.enable = true;
    todo-comments.enable = true;
  };
}
