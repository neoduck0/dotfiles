return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        explorer = { enabled = true },
        picker = {
            enabled = true,
            layout = {
                layout = { backdrop = false }
            }
        },
        scroll = { enabled = true }
    }
}
