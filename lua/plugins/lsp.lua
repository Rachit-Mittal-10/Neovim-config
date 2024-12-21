return{
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls","harper_ls","cssls","jdtls","eslint","jsonls","html"},
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({capabilites = capabilities})
            lspconfig.harper_ls.setup({capabilites = capabilities})
            lspconfig.cssls.setup({capabilites = capabilities})
            lspconfig.eslint.setup({capabilites = capabilities})
            lspconfig.html.setup({capabilites = capabilities})
            vim.keymap.set('n','K',vim.lsp.buf.hover,{silent=true})
            vim.keymap.set('n','gd',vim.lsp.buf.definition,{silent=true})
            vim.keymap.set({'n','v'},'<leader>ca',vim.lsp.buf.code_action,{silent=true})
        end
    }
}
