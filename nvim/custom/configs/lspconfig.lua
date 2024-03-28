local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- 
-- lspconfig.pyright.setup { blabla}
--


lspconfig.omnisharp.setup {
  cmd = { "dotnet", "/Users/lucaschaves/.omnisharp/omnisharp/OmniSharp.exe" },
  enable_roslyn_analyzers = true,
  organize_imports_on_format = true,
  enable_import_completion = true,
  enable_editorconfig_support = true,
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "cs", "vb", "csproj", "Build.props", "Packages.props" },
}
