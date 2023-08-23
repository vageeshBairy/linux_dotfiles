local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local util = require("lspconfig/util")

local servers = { "html", "cssls", "emmet_ls", "tsserver", "gopls", "pyright", "lua_ls", "tailwindcss", "dartls",
  "jdtls", "svelte", "vuels", "rust_analyzer" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}

lspconfig.gopls.setup {
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      }
    }
  }
}

lspconfig.jdtls.setup {
  cmd = { 'jdtls' },
  root_dir = function(fname)
    return lspconfig.util.root_pattern('pom.xml', 'gradle.build', '.git')(fname) or vim.fn.getcwd()
  end
}

lspconfig.dartls.setup {
  root_dir = lspconfig.util.root_pattern('.git'),
  settings = {
    dart = {
      analysisExcludedFolders = {
        vim.fn.expand("$HOME/AppData/Local/Pub/Cache"),
        vim.fn.expand("$HOME/.pub-cache"),
        vim.fn.expand("/opt/homebrew/"),
        vim.fn.expand("$HOME/tools/flutter/"),
      },
      updateImportsOnRename = true,
      completeFunctionCalls = true,
      showTodos = true,
    }
  },
}

lspconfig.tsserver.setup {
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" },
}

lspconfig.svelte.setup {
  filetypes = { "svelte" },
  cmd = { "svelteserver", "--stdio" },
  root_dir = lspconfig.util.root_pattern("package.json", ".git")
}

lspconfig.vuels.setup {
  cmd = { "vls" },
  root_dir = lspconfig.util.root_pattern("package.json", "vue.config.js")
}

lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },

      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false
      },
    },
  },
}

-- lspconfig.rust_analyzer.setup {
--   filetypes = { "rust" },
--   root_dir = lspconfig.util.root_pattern("Cargo.toml"),
--   cmd = {
--     "rustup", "run", "stable", "rust-analyzer",
--   }
-- }
