local M = {}

M.crates = {
  plugin = true,
  n = {
    ["<leader>rcu"] = {
      function()
        require('crates').upgrade_all_crates()
      end,
      "Update crates"
    }
  }
}

M.general = {
  n = {
    ["+"] = { '<C-a>', "increase number" },
    ["-"] = { '<C-x>', "decrease number" },
    ["dw"] = { 'vb"_d', "delete word backwords" },
    ["<C-a>"] = { 'gg<S-v>G', "select whole file" },
    ["<C-h>"] = { '<cmd> TmuxNavigateLeft<CR>', "window left" },
    ["<C-l>"] = { '<cmd> TmuxNavigateRight<CR>', "window right" },
    ["<C-j>"] = { '<cmd> TmuxNavigateDown<CR>', "window down" },
    ["<C-k>"] = { '<cmd> TmuxNavigateUp<CR>', "window up" },
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
    ["<leader>dus"] = {
      function()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end
    }
  }
}

M.lspsaga = {
  plugin = true,
  noremap = true,
  silent = true,
  n = {
    ["<C-j>"] = {"<Cmd>Lspsaga diagnostic_jump_next<CR>", "Lspsaga diagnostic jump next" },
    ["K"]     = {"<Cmd>Lspsaga hover_doc<CR>", "lspsaga hover doc"},
    ["gd"]    = {"<Cmd>Lspsaga lsp_finder<CR>", "lspsaga lsp finder"},
    ["gp"]    = {"<Cmd>Lspsaga preview_definition<CR>", "lspsaga preview definition"},
    ["gr"]    = {"<Cmd>Lspsaga rename<CR>", "lspsaga rename"},
  },
  i = {
    ["<C-k>"] = {"<Cmd>Lspsaga signature_help<CR>", "signature help"}
  }
}

return M
