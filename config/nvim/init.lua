vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config.lazy")

require("keymaps")
require("options")

vim.api.nvim_create_autocmd({ "FocusGained", "TermClose", "TermLeave" }, {
	callback = function()
		if vim.bo.buftype ~= "nofile" then
			vim.cmd("checktime")
		end
	end,
})
