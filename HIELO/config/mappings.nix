{
  globals.mapleader = ";";
  globals.maplocalleader = " ";

  plugins = {
    which-key.enable = true;
    hydra.enable = true;
  };

  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>ff";
      action = "<cmd>lua require('telescope').extensions.file_browser.file_browser({cwd = vim.fn.expand('%:p:h')})<cr>";
      options = {
        noremap = true;
        desc = "Find Files (CWD)";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fF";
      action = "<cmd>lua require('telescope').extensions.file_browser.file_browser()<cr>";
      options = {
        noremap = true;
        desc = "Find Files (~/)";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fd";
      action = "<cmd>lua require('telescope.builtin').man_pages()<cr>";
      options = {
        noremap = true;
        desc = "Man Docs";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fr";
      action = "<cmd>lua require('telescope.builtin').oldfiles()<cr>";
      options = {
        noremap = true;
        desc = "Open Recent Files";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>js";
      action = "<cmd>lua require('telescope.builtin').buffers()<cr>";
      options = {
        noremap = true;
        desc = "List/Switch Buffers";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>jk";
      action = "<cmd>bd<cr>";
      options = {
        noremap = true;
        desc = "Kill Current Buffer";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>j<Tab>";
      action = "<cmd>bnext<cr>";
      options = {
        noremap = true;
        desc = "Switch to Next Buffer";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>j<Space>";
      action = "<cmd>bprevious<cr>";
      options = {
        noremap = true;
        desc = "Switch to Prev Buffer";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>wv";
      action = "<cmd>vsp<cr>";
      options = {
        noremap = true;
        desc = "Vertical Split";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>wh";
      action = "<cmd>sp<cr>";
      options = {
        noremap = true;
        desc = "Horizontal Split";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>wc";
      action = "<cmd>close<cr>";
      options = {
        noremap = true;
        desc = "Kill Buffer Only";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>wa";
      action = "<cmd>only<cr>";
      options = {
        noremap = true;
        desc = "Kill All but Current";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>wl";
      action = "<cmd>bd | close<cr>";
      options = {
        noremap = true;
        desc = "Kill Buffer & Window";
      };
    }
    # Localleader bindings
    {
      mode = [ "n" ];
      key = "<localleader>wh";
      action = "<cmd>wincmd h<cr>";
      options = {
        noremap = true;
        desc = "Focus Left";
      };
    }
    {
      mode = [ "n" ];
      key = "<localleader>wj";
      action = "<cmd>wincmd j<cr>";
      options = {
        noremap = true;
        desc = "Focus Down";
      };
    }
    {
      mode = [ "n" ];
      key = "<localleader>wk";
      action = "<cmd>wincmd k<cr>";
      options = {
        noremap = true;
        desc = "Focus Up";
      };
    }
    {
      mode = [ "n" ];
      key = "<localleader>wl";
      action = "<cmd>wincmd l<cr>";
      options = {
        noremap = true;
        desc = "Focus Right";
      };
    }
    {
      mode = [ "n" ];
      key = "<localleader>wH";
      action = "<cmd>wincmd H<cr>";
      options = {
        noremap = true;
        desc = "Move Left";
      };
    }
    {
      mode = [ "n" ];
      key = "<localleader>wJ";
      action = "<cmd>wincmd J<cr>";
      options = {
        noremap = true;
        desc = "Move Down";
      };
    }
    {
      mode = [ "n" ];
      key = "<localleader>wK";
      action = "<cmd>wincmd K<cr>";
      options = {
        noremap = true;
        desc = "Move Up";
      };
    }
    {
      mode = [ "n" ];
      key = "<localleader>wL";
      action = "<cmd>wincmd L<cr>";
      options = {
        noremap = true;
        desc = "Move Right";
      };
    }
    {
      mode = [ "n" ];
      key = "<localleader>wr";
      action = "<cmd>wincmd r<cr>";
      options = {
        noremap = true;
        desc = "Shift Down/Right";
      };
    }
    {
      mode = [ "n" ];
      key = "<localleader>wR";
      action = "<cmd>wincmd R<cr>";
      options = {
        noremap = true;
        desc = "Shift Up/Left";
      };
    }
    {
      mode = [ "n" ];
      key = "<localleader>wx";
      action = "<cmd>wincmd x<cr>";
      options = {
        noremap = true;
        desc = "Switch Current for Next";
      };
    }
    {
      mode = [ "n" ];
      key = "<localleader>wf";
      action = "<cmd>resize<cr>";
      options = {
        noremap = true;
        desc = "Fullscreen Current";
      };
    }
    {
      mode = [ "n" ];
      key = "<localleader>wF";
      action = "<cmd>resize!<cr>";
      options = {
        noremap = true;
        desc = "Restore All";
      };
    }
    {
      mode = [ "n" ];
      key = "<localleader>wi";
      action = "<cmd>resize +N<cr>";
      options = {
        noremap = true;
        desc = "+ Height";
      };
    }
    {
      mode = [ "n" ];
      key = "<localleader>wo";
      action = "<cmd>resize -N<cr>";
      options = {
        noremap = true;
        desc = "- Height";
      };
    }
    {
      mode = [ "n" ];
      key = "<localleader>wI";
      action = "<cmd>vertical resize +N<cr>";
      options = {
        noremap = true;
        desc = "+ Width";
      };
    }
    {
      mode = [ "n" ];
      key = "<localleader>wO";
      action = "<cmd>vertical resize -N<cr>";
      options = {
        noremap = true;
        desc = "- Width";
      };
    }
    {
      mode = [ "n" ];
      key = "<localleader>wd";
      action = "<cmd>wincmd =<cr>";
      options = {
        noremap = true;
        desc = "Reset All Sizes";
      };
    }
    {
      mode = [ "n" ];
      key = "<localleader>mm";
      action = "<cmd>lua require('mini.map').toggle()<cr>";
      options = {
        noremap = true;
        desc = "Toggle MiniMap";
      };
    }
    {
      mode = [ "n" ];
      key = "<localleader>ms";
      action = "<cmd>lua require('scrollbar.handlers').ScrollbarHandle()<cr>";
      options = {
        noremap = true;
        desc = "Toggle Scrollbar";
      };
    }
    {
      mode = [ "n" ];
      key = "<localleader>tt";
      action = "<cmd>CHADopen<cr>";
      options = {
        noremap = true;
        desc = "Toggle CHADtree";
      };
    }
  ];
}
