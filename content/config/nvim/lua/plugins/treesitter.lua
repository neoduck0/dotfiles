return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup {
            ensure_installed = {
                "bash",
                "c",
                "cpp",
                "css",
                "go",
                "html",
                "htmldjango",
                "hyprlang",
                "javascript",
                "jinja",
                "jinja_inline",
                "json",
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "rust",
                "scss",
                "sql",
                "tmux",
                "vim",
                "vimdoc",
                "xml",
                "zig",
            },
            auto_install = false,
            highlight = { enable = true }
        }
    end
}
