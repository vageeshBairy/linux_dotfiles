return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
            cond = function()
                return vim.fn.executable 'make' == 1
            end,
        },
    },
    config = function()
        require("telescope").setup({
            defaults = {
                mappings = {
                    i = {
                        ['<C-u>'] = false,
                        ['<C-d>'] = false,
                    },
                },
            },
            pickers = {
                find_files = {
                    previewer = false,
                    width = 0.5,
                },
                git_files = {
                    previewer = false,
                    width = 0.5,
                },
            }
        })
        -- Enable telescope fzf native, if installed
        require('telescope').load_extension('fzf')
        -- See `:help telescope.builtin`
        vim.keymap.set('n', '<leader>/', require('telescope.builtin').oldfiles,
            { desc = '[?] Find recently opened files' })
        vim.keymap.set('n', '<leader>pgf', require('telescope.builtin').git_files, { desc = '[P]roject [G]it [F]iles' })
        vim.keymap.set('n', '<leader>pf', require('telescope.builtin').find_files, { desc = '[P]roject [F]iles' })
        vim.keymap.set('n', '<leader>pw', require('telescope.builtin').grep_string, { desc = '[P]roject current [W]ord' })
        vim.keymap.set('n', '<leader>pg', require('telescope.builtin').live_grep, { desc = '[P]roject by [G]rep' })
    end
}
