return {
	{
		"cbochs/grapple.nvim",
		dependencies = {
			{ "nvim-tree/nvim-web-devicons", lazy = true },
		},
		keys = {
			{ "<leader>m", "<cmd>Grapple toggle<cr>", desc = "Toggle Mark" },
			{ "<leader>h", "<cmd>Grapple toggle_tags<cr>", desc = "Show Marks" },

			{ "<S-l>", "<cmd>Grapple cycle_tags next<cr>", desc = "Previous Mark" },
			{ "<S-h>", "<cmd>Grapple cycle_tags prev<cr>", desc = "Next Mark" },
		},
		opts = {
			win_opts = {
				width = 60,
				footer = "",
			},
		},
	},
}
