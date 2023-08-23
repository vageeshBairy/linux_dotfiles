-- Neovide config
vim.opt.guifont = "JetBrainsMono Nerd Font:h9"
vim.g.remember_window_size = true
vim.g.remember_window_position = true

local function toggleTransparency()
  if vim.g.neovide_transparency == 1.0 then
    vim.cmd "let g:neovide_transparency=0.8"
  else
    vim.cmd "let g:neovide_transparency=1.0"
  end
end

local function toggleFullscreen()
  if vim.g.neovide_fullscreen == false then
    vim.cmd "let g:neovide_fullscreen=v:true"
  else
    vim.cmd "let g:neovide_fullscreen=v:false"
  end
end

vim.keymap.set("n", "<F3>", toggleFullscreen, { silent = true })
vim.keymap.set("n", "<F4>", toggleTransparency, { silent = true })

