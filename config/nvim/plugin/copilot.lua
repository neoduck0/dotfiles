vim.pack.add({
    { src = "https://github.com/zbirenbaum/copilot.lua" }
})

require("copilot").setup({
    suggestion = {
        enabled = true,
        auto_trigger = false,
    },
})

vim.api.nvim_create_autocmd("User", {
    pattern = "BlinkCmpMenuOpen",
    callback = function()
        vim.b.copilot_suggestion_hidden = true
    end,
})

vim.api.nvim_create_autocmd("User", {
    pattern = "BlinkCmpMenuClose",
    callback = function()
        vim.b.copilot_suggestion_hidden = false
    end,
})
