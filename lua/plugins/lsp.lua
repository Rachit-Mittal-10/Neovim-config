return{
    {
        "williamboman/mason.nvim",
        version = false,
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        version = false,
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls","cssls","jdtls","eslint","jsonls","html","clangd"},
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        version = false,
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim"
        },
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")
            local mason_lspconfig = require("mason-lspconfig")
            local on_attach = function(_,bufnr)
                local opts = {buffer=bufnr,silent=true}
                vim.keymap.set('n','K',vim.lsp.buf.hover,{silent=true})
                vim.keymap.set('n','gd',vim.lsp.buf.definition,{silent=true})
                vim.keymap.set({'n','v'},'<leader>ca',vim.lsp.buf.code_action,{silent=true})
            end
            local servers = {"lua_ls","cssls","jdtls","eslint","jsonls","html","clangd"}
            for _,server in ipairs(servers) do
                lspconfig[server].setup({
                    capabilities=capabilities,
                    on_attach = on_attach,
                })
            end
        end
    }
}
