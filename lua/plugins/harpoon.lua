return {
	{
		"nvim-lua/plenary.nvim",
	},
	{
		"ThePrimeagen/harpoon",
		keys = {
			{
				"<leader>hm",
				function()
					require("harpoon.mark").toggle_file()
				end,
				desc = "Harpoon toggle mark",
			},
			{
				"<leader>hh",
				function()
					require("harpoon.ui").toggle_quick_menu()
				end,
				desc = "Harpoon view marks",
			},
			{
				"<S-l>",
				function()
					require("harpoon.ui").nav_next()
				end,
				desc = "Harpoon next mark",
			},
			{
				"<S-h>",
				function()
					require("harpoon.ui").nav_prev()
				end,
				desc = "Harpoon prev mark",
			},
		},
	},
}
