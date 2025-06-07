return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		animate = {
			enabled = false,
		},
		scroll = {
			enabled = false,
		},
		dim = {
			enabled = false,
		},
		picker = {
			previewers = {
				diff = {
					builtin = false,
					cmd = { "delta" },
				},
				git = {
					builtin = false,
					args = {
						"delta",
					},
				},
			},
			sources = {
				explorer = {
					layout = {
						layout = {
							width = 0.2,
						},
					},
				},
			},
			layouts = {
				default = {
					layout = {
						box = "horizontal",
						width = 0.8,
						min_width = 120,
						height = 0.8,
						{
							box = "vertical",
							border = "rounded",
							title = "{title} {live} {flags}",
							{ win = "input", height = 1, border = "bottom" },
							{ win = "list", border = "none" },
						},
						{ win = "preview", title = "{preview}", border = "rounded", width = 0.7 },
					},
				},
			},
		},
	},
}
