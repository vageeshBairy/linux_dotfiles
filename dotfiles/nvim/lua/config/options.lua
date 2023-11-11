-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- vim.scriptencoding = 'utf-8'
-- vim.opt.encoding = 'utf-8'
-- vim.opt.fileencoding = 'utf-8'
-- vim.opt.laststatus = 3

vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.signcolumn = "yes"

vim.opt.guicursor = ""
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = false
vim.opt.backup = false
vim.opt.expandtab = true
vim.opt.scrolloff = 8
vim.opt.shell = "bash"
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = false -- No Wrap lines
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.updatetime = 50
vim.opt.swapfile = false
vim.opt.incsearch = true
vim.opt.colorcolumn = "80"
vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
vim.opt.clipboard = "unnamedplus"
vim.opt.fillchars = { eob = " " }
vim.opt.cursorline = false
vim.opt.completeopt = "menuone,noinsert,noselect"

-- Transparency
vim.g.transparent_enabled = true
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 80
vim.g.netrw_keepdir = 0
