return {
	"folke/snacks.nvim",
	opts = {
		bigfile = { enabled = false },
		dashboard = { enabled = true },
		explorer = { enabled = true },
		indent = { enabled = true },
		input = { enabled = true },
		picker = {
			enabled = true,
			exclude = {
				"node_modules",
			},
			sources = {
				grep = {
					exclude = { "LICENSE*", "LICENCE*" },
				},
			},
		},
		notifier = { enabled = true },
		quickfile = { enabled = true },
		scope = { enabled = true },
		scroll = { enabled = false },
		statuscolumn = { enabled = true },
		words = { enabled = true },
	},
}
