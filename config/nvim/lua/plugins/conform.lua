return {
	"stevearc/conform.nvim",
	event = "BufWritePre",
	opts = {
		formatters_by_ft = {
			["*"] = { "trim_whitespace", "trim_newlines" },

			c = { "clang-format" },
			cpp = { "clang-format" },
			css = { "prettier" },
			go = { "gofmt" },
			html = { "prettier" },
			javascript = { "prettier" },
			javascriptreact = { "prettier" },
			json = { "jq" },
			lua = { "stylua" },
			python = { "ruff" },
			typescript = { "prettier" },
			typescriptreact = { "prettier" },
		},
		format_on_save = {
			timeout_ms = 500,
		},
	},
}
