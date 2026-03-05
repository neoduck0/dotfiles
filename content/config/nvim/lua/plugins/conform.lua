return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				["*"] = { "trim_whitespace", "trim_newlines" },
				c = { "clang-format" },
				go = { "gofmt" },
				json = { "jq" },
				lua = { "stylua" },
				python = { "ruff" },
				sh = { "shfmt" },
			},
			formatters = {
				["clang-format"] = {
					prepend_args = { "-style={BasedOnStyle: LLVM, IndentWidth: 4}" },
				},
			},
			format_on_save = {
				timeout_ms = 500,
			},
		})
	end,
}
