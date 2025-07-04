return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
            library = {
                path = "${3rd}/luv/library",
                words = { "vim%.uv" }
            }
        }
    },
    config = function()
        vim.lsp.enable("bashls")
        vim.lsp.enable("clangd")
        vim.lsp.enable("gopls")
        vim.lsp.enable("lua_ls")
        vim.lsp.enable("pyright")
        vim.diagnostic.config({
            virtual_text = {
                current_line = true,
                prefix = "●"
            },
            signs = false,
            severity_sort = true
        })
    end
}
