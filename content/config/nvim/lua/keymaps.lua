vim.keymap.set("n", "<leader>e", function() Snacks.explorer() end)

vim.keymap.set("n", "<leader>w", function()
    vim.opt.wrap = not vim.opt.wrap:get()
    vim.opt.linebreak = vim.opt.wrap:get()
end)

vim.keymap.set("n", "<leader>f/", function() Snacks.picker.grep() end)
vim.keymap.set("n", "<leader>fD", function() Snacks.picker.diagnostics() end)
vim.keymap.set("n", "<leader>fb", function() Snacks.picker.buffers() end)
vim.keymap.set("n", "<leader>fd", function() Snacks.picker.diagnostics_buffer() end)
vim.keymap.set("n", "<leader>ff", function() Snacks.picker.files() end)
vim.keymap.set("n", "<leader>fh", function() Snacks.picker.help() end)
vim.keymap.set("n", "<leader>fp", function() Snacks.picker.projects() end)
vim.keymap.set("n", "<leader>ft", function() Snacks.picker.todo_comments() end)

vim.keymap.set("n", "j", "gjzz")
vim.keymap.set("n", "k", "gkzz")

vim.keymap.set("n", "<leader>z", ":ZenMode<CR>")
