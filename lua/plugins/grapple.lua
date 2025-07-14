return {
	{
		"cbochs/grapple.nvim",
		dependencies = {
			{ "nvim-tree/nvim-web-devicons", lazy = true },
		},
		keys = {
			{
				"<leader>a",
				function()
					local grapple = require("grapple")
					local notifier = require("snacks.notifier")

					local currentBuffer = vim.api.nvim_get_current_buf()
					local mark = grapple.exists({ buffer = currentBuffer })
					local message = "Mark added"
					if mark then
						message = "Mark deleted"
					end

					grapple.toggle()
					notifier.notify(message, "info")
				end,
				desc = "Toggle Mark",
			},
			{ "<leader>h", "<cmd>Grapple toggle_tags<cr>", desc = "Show Marks" },

			{ "<S-l>", "<cmd>Grapple cycle_tags next<cr>", desc = "Next Mark" },
			{ "<S-h>", "<cmd>Grapple cycle_tags prev<cr>", desc = "Previous Mark" },
		},
		opts = {
			win_opts = {
				width = 60,
				footer = "",
			},
		},
	},
}
