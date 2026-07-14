vim.g.mapleader = " "

vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)


vim.keymap.set("n", "<leader>d", function() vim.diagnostic.open_float() end)

vim.keymap.set("n", "<leader>e", function() Snacks.explorer() end)

vim.keymap.set("n", "<leader>tw", function()
    vim.opt.wrap = not vim.opt.wrap:get()
    vim.opt.linebreak = vim.opt.wrap:get()
end)
vim.keymap.set('n', '<leader>td', function()
    vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end)
vim.keymap.set('n', '<leader>ts', function()
    vim.opt.spell = not vim.opt.spell:get()
end)
vim.keymap.set("n", "<leader>tc", function()
    require("copilot.suggestion").toggle_auto_trigger()
    vim.b.copilot_auto_toggle_state = not (vim.b.copilot_auto_toggle_state or false)
    local state = vim.b.copilot_auto_toggle_state and "on" or "off"
    vim.notify("Auto AI Suggestions: " .. state, vim.log.levels.INFO)
end)


vim.keymap.set("n", "<leader>f/", function() Snacks.picker.grep() end)
vim.keymap.set("n", "<leader>fD", function() Snacks.picker.diagnostics() end)
vim.keymap.set("n", "<leader>fb", function() Snacks.picker.buffers() end)
vim.keymap.set("n", "<leader>fd", function() Snacks.picker.diagnostics_buffer() end)
vim.keymap.set("n", "<leader>ff", function() Snacks.picker.files() end)
vim.keymap.set("n", "<leader>fh", function() Snacks.picker.help() end)
vim.keymap.set("n", "<leader>fp", function() Snacks.picker.projects() end)
vim.keymap.set("n", "<leader>ft", function() Snacks.picker.todo_comments() end)

vim.keymap.set("i", "<M-o>", function() require("copilot.suggestion").accept() end)
vim.keymap.set("i", "<M-]>", function() require("copilot.suggestion").next() end)
vim.keymap.set("i", "<M-[>", function() require("copilot.suggestion").prev() end)
