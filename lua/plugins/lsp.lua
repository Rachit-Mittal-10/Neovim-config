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
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.harper_ls.setup({})
            lspconfig.cssls.setup({})
            lspconfig.eslint.setup({})
            lspconfig.html.setup({})
            vim.keymap.set('n','K',vim.lsp.buf.hover,{silent=true})
            vim.keymap.set('n','gd',vim.lsp.buf.definition,{silent=true})
            vim.keymap.set({'n','v'},'<leader>ca',vim.lsp.buf.code_action,{silent=true})
        end
    }

}
