local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "catppuccin",
   transparency = true,
}
M.plugins = 'custom.plugins'
M.lspconfig = 'custom.configs.lspconfig'
M.mappings = require ('custom.mappings')

return M
