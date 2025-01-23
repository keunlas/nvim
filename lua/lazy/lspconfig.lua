require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = {
    "clangd",
    "lua_ls",
  },
}

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
-- require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
--   capabilities = capabilities
-- }
require 'lspconfig'.clangd.setup { capabilities = capabilities }
require 'lspconfig'.lua_ls.setup { capabilities = capabilities }
