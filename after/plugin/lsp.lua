local ok, _ = pcall(require, 'lsp-zero')
if ok then
    local lsp = require('lsp-zero').preset({
        name = 'minimal',
        set_lsp_keymaps = true,
        manage_nvim_cmp = true,
        suggest_lsp_servers = false
    })
    local lspconfig = require('lspconfig')
    local cmp = require('cmp')

    lsp.ensure_installed({
        'lua_ls',
        'pyright',
    })

    lsp.on_attach(function(client, bufnr)
        lsp.default_keymaps({ buffer = bufnr })
        vim.keymap.set('n', 'gR', '<cmd>lua vim.lsp.buf.rename()<cr>', { buffer = true })
        -- lsp.buffer_autoformat()
    end)

    -- (Optional) Configure lua language server for neovim
    lspconfig.lua_ls.setup(lsp.nvim_lua_ls())

    -- Python
    lspconfig.pyright.setup {
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

    require("luasnip.loaders.from_vscode").lazy_load()
    cmp.setup({
        sources = {
            {name = 'nvim_lsp'},
            {name = 'luasnip'},
        },
        mapping = {
            -- `Enter` key to confirm completion
            ['<CR>'] = cmp.mapping.confirm({ select = false }),
        }
    })

    vim.diagnostic.config({
        underline = {
            severity = { max = vim.diagnostic.severity.INFO }
        },
        virtual_text = {
            severity = { min = vim.diagnostic.severity.WARN }
        }
    })

    lsp.setup()
end
