local map = vim.keymap.set

map("n", "<leader>,", function()
	Snacks.picker.buffers()
end, { desc = "Buffers" })

map("n", "<leader>/", function()
	Snacks.picker.grep()
end, { desc = "Grep" })

map("n", "<leader>n", function()
	Snacks.picker.notifications()
end, { desc = "Notification History" })

map("n", "<leader>e", function()
	Snacks.explorer()
end, { desc = "File Explorer" })

map("n", "<leader>ff", function()
	Snacks.picker.files()
end, { desc = "Find Files" })

map("n", "<leader>gs", function()
	Snacks.picker.git_status()
end, { desc = "Git Status" })

map("n", "<leader>gd", function()
	Snacks.picker.git_diff()
end, { desc = "Git Diff (Hunks)" })

map("n", "<leader>sb", function()
	Snacks.picker.lines()
end, { desc = "Buffer Lines" })

map("n", "<leader>sB", function()
	Snacks.picker.grep_buffers()
end, { desc = "Grep Open Buffers" })

map({ "n", "x" }, "<leader>sw", function()
	Snacks.picker.grep_word()
end, { desc = "Visual Selection or Word" })

map("n", "<leader>sd", function()
	Snacks.picker.diagnostics()
end, { desc = "Diagnostics" })

map("n", "<leader>sD", function()
	Snacks.picker.diagnostics_buffer()
end, { desc = "Buffer Diagnostics" })

map("n", "<leader>sh", function()
	Snacks.picker.help()
end, { desc = "Help Pages" })

map("n", "<leader>sk", function()
	Snacks.picker.keymaps()
end, { desc = "Keymaps" })

map("n", "<leader>sr", function()
	Snacks.picker.lsp_references()
end, { desc = "References" })

map("n", "<leader>uC", function()
	Snacks.picker.colorschemes()
end, { desc = "Colorschemes" })

map("n", "gd", function()
	Snacks.picker.lsp_definitions()
end, { desc = "Goto Definition" })

map("n", "gD", function()
	Snacks.picker.lsp_declarations()
end, { desc = "Goto Declaration" })

map("n", "gI", function()
	Snacks.picker.lsp_implementations()
end, { desc = "Goto Implementation" })

map("n", "gy", function()
	Snacks.picker.lsp_type_definitions()
end, { desc = "Goto T[y]pe Definition" })

map("n", "gai", function()
	Snacks.picker.lsp_incoming_calls()
end, { desc = "C[a]lls Incoming" })

map("n", "gao", function()
	Snacks.picker.lsp_outgoing_calls()
end, { desc = "C[a]lls Outgoing" })

map("n", "<leader>ss", function()
	Snacks.picker.lsp_symbols()
end, { desc = "LSP Symbols" })

map("n", "<leader>sS", function()
	Snacks.picker.lsp_workspace_symbols()
end, { desc = "LSP Workspace Symbols" })

map({ "n", "t" }, "]]", function()
	Snacks.words.jump(vim.v.count1)
end, { desc = "Next Reference" })

map({ "n", "t" }, "[[", function()
	Snacks.words.jump(-vim.v.count1)
end, { desc = "Prev Reference" })

map("n", "<leader>us", function()
	Snacks.toggle.option("spell", { name = "Spelling" }):toggle()
end, { desc = "Spelling" })

map("n", "<leader>uw", function()
	Snacks.toggle.option("wrap", { name = "Wrap" }):toggle()
end, { desc = "Wrap" })

map("n", "<leader>uL", function()
	Snacks.toggle.option("relativenumber", { name = "Relative Number" }):toggle()
end, { desc = "Relative Number" })

map("n", "<leader>ud", function()
	Snacks.toggle.diagnostics():toggle()
end, { desc = "Diagnostics" })

map("n", "<leader>ul", function()
	Snacks.toggle.line_number():toggle()
end, { desc = "Line Numbers" })

map("n", "<leader>uh", function()
	Snacks.toggle.inlay_hints():toggle()
end, { desc = "Inlay Hints" })

map("n", "<leader>ug", function()
	Snacks.toggle.indent():toggle()
end, { desc = "Indent Guides" })

map("n", "<leader>uD", function()
	Snacks.toggle.dim():toggle()
end, { desc = "Dimming" })

map("i", "<M-l>", function()
	require("copilot.suggestion").accept()
end, { desc = "Accept Copilot Suggestion" })

map("i", "<M-p>", function()
	require("copilot.suggestion").prev()
end, { desc = "Previous Copilot Suggestion" })

map("i", "<M-n>", function()
	require("copilot.suggestion").next()
end, { desc = "Next Copilot Suggestion" })
