vim.keymap.set("n", "<leader>ww", "<C-w>w", { silent = true })
vim.keymap.set("n", "<leader>wv", "<C-w>v", { silent = true })
vim.keymap.set("n", "<leader>wq", "<C-w>q", { silent = true })

vim.keymap.set("n", "<leader>e", function() Snacks.explorer() end, {silent = true })

vim.keymap.set("n", "<leader>ff", function() Snacks.picker.files() end, { silent = true })
vim.keymap.set("n", "<leader>f/", function() Snacks.picker.grep() end, { silent = true })
vim.keymap.set("n", "<leader>fh", function() Snacks.picker.help() end, { silent = true })

vim.keymap.set("n", "<leader>st", function() Snacks.picker.todo_comments() end, { silent = true })
vim.keymap.set("n", "<leader>sb", function() Snacks.picker.buffers() end, { silent = true })
vim.keymap.set("n", "<leader>sd", function() Snacks.picker.diagnostics_buffer() end, { silent = true })
vim.keymap.set("n", "<leader>sD", function() Snacks.picker.diagnostics() end, { silent = true })

vim.keymap.set("n", "<leader>t", function() Snacks.terminal() end, { silent = true })

vim.keymap.set({"n", "v"}, "j", "jzz", { silent = true })
vim.keymap.set({"n", "v"}, "k", "kzz", { silent = true })
vim.keymap.set({"n", "v"}, "<C-d>", "<C-d>zz", { silent = true })
vim.keymap.set({"n", "v"}, "<C-u>", "<C-u>zz", { silent = true })
vim.keymap.set({"n", "v"}, "n", "nzz", { silent = true })
vim.keymap.set({"n", "v"}, "N", "Nzz", { silent = true })
vim.keymap.set({"n", "v"}, "G", "Gzz", { silent = true })
