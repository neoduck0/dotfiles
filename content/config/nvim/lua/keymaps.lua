vim.keymap.set("n", "<leader>e", function() Snacks.explorer() end, {silent = true })

vim.keymap.set("n", "j", "jzz", { silent = true })
vim.keymap.set("n", "k", "kzz", { silent = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { silent = true })
vim.keymap.set("n", "n", "nzz", { silent = true })
vim.keymap.set("n", "N", "Nzz", { silent = true })
vim.keymap.set("n", "G", "Gzz", { silent = true })

vim.keymap.set("n", "<leader>ww", "<C-w>w", { silent = true })
vim.keymap.set("n", "<leader>wv", "<C-w>v", { silent = true })
vim.keymap.set("n", "<leader>wq", "<C-w>q", { silent = true })

vim.keymap.set("n", "<leader>ff", function() Snacks.picker.files() end, { silent = true })
vim.keymap.set("n", "<leader>f/", function() Snacks.picker.grep() end, { silent = true })
vim.keymap.set("n", "<leader>fb", function() Snacks.picker.buffers() end, { silent = true })
vim.keymap.set("n", "<leader>fh", function() Snacks.picker.help() end, { silent = true })
vim.keymap.set("n", "<leader>fd", function() Snacks.picker.diagnostics_buffer() end, { silent = true })
vim.keymap.set("n", "<leader>fD", function() Snacks.picker.diagnostics() end, { silent = true })

vim.keymap.set("n", "<leader>t", function() Snacks.terminal() end, { silent = true })
