return {
  'mfussenegger/nvim-lint',
  lazy = true,
  config = function()
    local linter = require("lint")
    linter.linters_by_ft = {
      javascript = { 'eslint' },
      typescript = { 'eslint' },
      javascriptreact = { 'eslint' },
      typescriptreact = { 'eslint' },
      svelte = { 'eslint' },
      python = { 'pylint' },
      c = { 'cpplint' },
      cpp = { 'cpplint' },
      html = { 'markdownlint' },
      markdown = { 'vale' },
      sql = { 'sqlfluff' },
      shell = { 'shellcheck' },
      css = { 'stylelint' },
      scss = { 'stylelint' },
      yaml = { 'yamllint' },
    }

    local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })

    vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost' }, {
      group = lint_augroup,
      callback = function()
        linter.try_lint()
      end,
    })

    vim.keymap.set('n', '<leader>l', function()
      linter.try_lint()
    end, { desc = 'Trigger linting for current file' })
    print("nvim-lint setup")
  end
}
