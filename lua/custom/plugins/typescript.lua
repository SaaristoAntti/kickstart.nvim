-- typescrpt lua
--
-- return {
--   require('lspconfig').ts_ls.setup {},
-- }
-- TypeScript LSP Configuration
-- npm install -g typescript-language-server typescript

return {
  vim.lsp.config('ts_ls', {}),
}
