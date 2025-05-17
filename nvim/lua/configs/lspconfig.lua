require("nvchad.configs.lspconfig").defaults()
require("lspconfig").gopls.setup {
  settings = {
    gopls = {
      gofumpt = true, -- use gofumpt formatting
      analyses = {
        unusedparams = true,
        unusedwrite = true,
      },
      staticcheck = true,
    },
  },
  on_attach = function(client, bufnr)
    -- Format on save
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { async = false }
        end,
      })
    end
  end,
}
local servers = { "html", "cssls" }
vim.lsp.enable(servers)
