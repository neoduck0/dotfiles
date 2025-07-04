return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup{
            ensure_installed = {"lua", "python", "bash", "go"},
            auto_install = false,
            highlight = { enable = true }
        }
    end
}
