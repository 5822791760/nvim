local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false
})
local lspconfig = require('lspconfig')
local cmp = require('cmp')

lsp.ensure_installed({
  'lua-language-server',
  'pyright',
})

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

lsp.setup_nvim_cmp({
  select_behavior = 'insert'
})

cmp.setup({
  mapping = {
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  }
})

lsp.setup()
