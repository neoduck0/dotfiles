return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup{
            ensure_installed = {"bash", "cpp", "go", "lua", "python"},
            auto_install = false,
            highlight = { enable = true }
        }
    end
}
