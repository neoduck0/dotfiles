return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        -- bigfile = { enabled = true },
        -- dashboard = { enabled = true },
        explorer = { enabled = true },
        indent = { enabled = true },
        -- input = { enabled = true },
        picker = {
            enabled = true,
            layout = {
                layout = { backdrop = false }
            }
        },
        notifier = { enabled = true },
        -- quickfile = { enabled = true },
        -- scope = { enabled = true },
        -- scroll = { enabled = true },
        -- statuscolumn = { enabled = true },
        -- words = { enabled = true },
    }
}
