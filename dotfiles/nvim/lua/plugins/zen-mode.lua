return {
    'folke/zen-mode.nvim',
    config = function()
        local status, zenMode = pcall(require, "zen-mode")
        if (not status) then return end

        zenMode.setup {}

        vim.keymap.set('n', '<C-w>o', '<cmd>ZenMode<cr>', { silent = true, desc = "zen mode" })
    end
}
