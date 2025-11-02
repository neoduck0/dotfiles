vim.keymap.set("n", "<leader>ww", "<C-w>w")

vim.keymap.set("n", "<leader>lvu", ":Lazy update<CR>")

vim.keymap.set("n", "<leader>lf", function() vim.lsp.buf.format() end)

vim.keymap.set("n", "<leader>d", function() vim.diagnostic.open_float() end)

vim.keymap.set("n", "<leader>ex", function() Snacks.explorer() end)

vim.keymap.set("n", "<leader>ff", function() Snacks.picker.files() end)
vim.keymap.set("n", "<leader>f/", function() Snacks.picker.grep() end)
vim.keymap.set("n", "<leader>fh", function() Snacks.picker.help() end)

vim.keymap.set("n", "<leader>st", function() Snacks.picker.todo_comments() end)
vim.keymap.set("n", "<leader>sb", function() Snacks.picker.buffers() end)
vim.keymap.set("n", "<leader>sd", function() Snacks.picker.diagnostics_buffer() end)
vim.keymap.set("n", "<leader>sD", function() Snacks.picker.diagnostics() end)

vim.keymap.set("n", "<leader>t", function() Snacks.terminal() end)
