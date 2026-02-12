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
        vim.lsp.config("pyright", {
            settings = {
                python = {
                    pythonPath = ".venv/bin/python"
                }
            }
        })

        vim.lsp.enable("bashls")
        vim.lsp.enable("clangd")
        vim.lsp.enable("cssls")
        vim.lsp.enable("gopls")
        vim.lsp.enable("html")
        vim.lsp.enable("lua_ls")
        vim.lsp.enable("pyright")
        vim.lsp.enable("ruff")
        vim.lsp.enable("ts_ls")

        vim.diagnostic.config({
            virtual_text = {
                current_line = true,
            },
            signs = false,
            severity_sort = true
        })

        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = "*",
            callback = function()
                vim.lsp.buf.format({ async = false })
            end,
        })
    end
}
