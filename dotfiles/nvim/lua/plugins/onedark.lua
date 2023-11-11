return {
  "navarasu/onedark.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    -- Main options --
    style = "cool", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    transparent = true, -- Show/hide background
    term_colors = false, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

    -- toggle theme style ---
    toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
    toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
    code_style = {
      comments = "italic",
      keywords = "none",
      functions = "bold",
      strings = "none",
      variables = "bold",
    },

    -- Lualine options --
    statusline = {
      transparent = false, -- lualine center bar transparency
    },

    -- Plugins Config --
    diagnostics = {
      darker = false, -- darker colors for diagnostic
      undercurl = true, -- use undercurl instead of underline for diagnostics
      background = false, -- use background color for virtual text
    },
  },
  config = function()
    vim.cmd.colorscheme("onedark")
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#fbfbfb", bold = false })
  end,
}
