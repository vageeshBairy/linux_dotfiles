local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

local opts = {
  treesitterhighlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  auto_install = true,
  ensure_installed = {
    "tsx",
    "javascript",
    "php",
    "json",
    "yaml",
    "toml",
    "css",
    "rust",
    "scss",
    "html",
    "lua",
    "go",
    "bash",
    "c",
    "jsdoc",
    "luadoc",
    "luap",
    "markdown",
    "markdown_inline",
    "python",
    "query",
    "regex",
    "typescript",
    "vim",
    "vimdoc",
  },
  autotag = {
    enable = true,
  },
}

return opts