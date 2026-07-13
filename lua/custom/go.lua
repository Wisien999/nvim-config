local M = {}

function M.setup(on_attach, capabilities)
  local lspconfig = require('lspconfig')

  lspconfig.gopls.setup {
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
          shadow = true,
        },
        staticcheck = true,
        gofumpt = true,
        usePlaceholders = true,
      },
    },
  }
end

return M
