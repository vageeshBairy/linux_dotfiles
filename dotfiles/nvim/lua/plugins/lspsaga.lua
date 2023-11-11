return {
  "nvimdev/lspsaga.nvim",
  lazy = true,
  event = "LspAttach",
  dependencies = {
    "nvim-treesitter/nvim-treesitter", -- optional
    "nvim-tree/nvim-web-devicons",     -- optional
  },
  config = function()
    local saga = require("lspsaga")
    saga.setup {
      ft = { "c", "cpp", "lua", "rust", "go", "js", "ts", "html", "py", "sql" }
    }
  end
}
