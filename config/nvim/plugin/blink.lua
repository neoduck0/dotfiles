vim.pack.add({
    {
        src = "https://github.com/saghen/blink.cmp",
        version = vim.version.range('1.0')
    },
})

require("blink-cmp").setup({
    signature = { enabled = false },
    completion = {
        menu = {
            auto_show = true,
        },
        ghost_text = {
            enabled = false,
        },
    },
})
