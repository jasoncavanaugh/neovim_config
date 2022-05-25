local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  vim.notify("Unable to get lspconfig!")
  return
end
-- require("lspconfig").csharp_ls.setup{}
require("user.lsp.lsp-installer")
require("user.lsp.handlers").setup()
