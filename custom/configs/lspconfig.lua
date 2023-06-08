local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { 
  "html",
  "cssls",
  "clangd",
  "cssmodules_ls",
  "bashls",
  "csharp_ls",
  "dockerls",
  "eslint",
  "jsonls",
  "lua_ls",
  "pyright",
  "rust_analyzer",
  "svelte",
  "tsserver",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

