local cmp = require "cmp"

local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function ()
      return require("custom.configs.treesitter")
    end,
    config = function (_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end
  },
  {"nvim-tree/nvim-web-devicons"},
  {
    "glepnir/lspsaga.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons"     -- optional
    },
    opts = function ()
      return require "lspsaga"
    end,
    config = function(_, opts)
      require("lspsaga").setup(opts)
      require("core.utils").load_mappings("lspsaga")
    end
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local M = require "plugins.configs.cmp"
      M.completion.completeopt = "menu,menuone,noselect"
      M.mapping["<CR>"] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Insert,
        select = false,
      }
      table.insert(M.sources, {name = "crates"})
      return M
    end,
  },
  {
    "onsails/lspkind.nvim",
    opts = function ()
      return require "custom.configs.lspkind"
    end
  },
  {"hrsh7th/cmp-nvim-lsp"},
  {"hrsh7th/cmp-nvim-lua"}, 
  {"hrsh7th/cmp-nvim-lsp-signature-help"},
  {"hrsh7th/cmp-path"},
  {"hrsh7th/cmp-buffer"},
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require "dap"
      local dapui = require "dapui"
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end;
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end;
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end;
    end,
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    lazy = false,
    config = function(_, opts)
      require("nvim-dap-virtual-text").setup(opts)
    end
  },
  {
    "mfussenegger/nvim-dap",
    config = function(_, _)
      require("core.utils").load_mappings("dap")
    end,
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
    end
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function(_, _)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
      require("core.utils").load_mappings "dap_python"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "bash-language-server",
        "clangd",
        "clang-format",
        "codelldb",
        "css-lsp",
        "dart-debug-adapter",
        "emmet-ls",
        "eslint-lsp",
        "google-java-format",
        "gopls",
        "gofumpt",
        "goimports-reviser",
        "golines",
        "html-lsp",
        "prettier",
        "tailwindcss-language-server",
        "debugpy",
        "pyright",
        "black",
        "mypy",
        "ruff",
        "kotlin-language-server",
        "kotlin-debug-adapter",
        "java-debug-adapter",
        "jdtls",
        "lua-language-server",
        "svelte-language-server",
        "typescript-language-server",
        "vim-language-server",
        "vue-language-server",
        "yaml-language-server",
        "rust-analyzer",
        "stylua",
      },
    },
  },
  --tmux
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  --java plugin
  {
    "mfussenegger/nvim-jdtls",
  },

  --rust plugin
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function()
      return require "rust-tools"
    end,
    config = function(_, opts)
      require("rust-tools").setup(opts)
    end
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "saecki/crates.nvim",
    ft = { "toml" },
    dependencies = "nvim-lua/plenary.nvim",
    config = function(_, opts)
      local crates = require('crates')
      crates.setup(opts)
      require('cmp').setup.buffer({
        sources = { { name = "crates" }}
      })
      crates.show()
      require("core.utils").load_mappings("crates")
    end,
  },
  --flutter
  {
    "RobertBrunhage/flutter-riverpod-snippets",
    "Neevash/awesome-flutter-snippets",
  },
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    ft = { "dart" },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
  },
  {
    "dinhhuy258/git.nvim", -- For git blame & browse
  },
}

return plugins
