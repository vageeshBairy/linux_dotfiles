local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require('null-ls')

local opts = {
  sources = {
    null_ls.builtins.formatting.black,
    null_ls.builtins.diagnostics.mypy,
    null_ls.builtins.diagnostics.ruff,
    null_ls.builtins.diagnostics.eslint_d.with({
      diagnostics_format = '[eslint] #{m}\n(#{c})'
    }),
    null_ls.builtins.formatting.gofumpt,           --go formatting
    null_ls.builtins.formatting.goimports_reviser, --go formatting
    null_ls.builtins.formatting.golines,           -- go formatting
    null_ls.builtins.formatting.shfmt,             -- shell script formatting
    null_ls.builtins.formatting.prettier.with({
      filetypes = {
      "css",
      "scss",
      "less",
      "html",
      "json",
      "yaml",
      "markdown",
      "graphql",
      },
    }),
    null_ls.builtins.formatting.eslint_d,           --js formatting
    -- markdown formatting
    null_ls.builtins.diagnostics.shellcheck,       -- shell script diagnostics
    null_ls.builtins.code_actions.shellcheck,      -- shell script code actions
    null_ls.builtins.formatting.stylua,            -- lua formating
    null_ls.builtins.completion.spell,
    null_ls.builtins.formatting.clang_format,      -- c++ formatting
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({
        group = augroup,
        buffer = bufnr,
      })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
}

return opts
