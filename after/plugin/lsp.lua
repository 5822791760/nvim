local lsp = require('lsp-zero').preset({})
local lspconfig = require('lspconfig')

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
lspconfig.lua_ls.setup(lsp.nvim_lua_ls())

-- Python
lspconfig.pyright.setup{
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "off"
      }
    }
  }
}

lsp.setup()
