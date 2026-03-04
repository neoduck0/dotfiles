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
            },
            sources = {
                files = { hidden = true },
                grep = { hidden = true },
                explorer = { hidden = true }
            },
        },
        scroll = { enabled = true },
        notifier = { enabled = true }
    }
}
