return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local harpoon = require("harpoon")

			harpoon:setup()

			vim.keymap.set("n", "<leader>hm", function()
				harpoon:list():add()
			end, { desc = "Harpoon add mark" })

			vim.keymap.set("n", "<leader>hh", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end, { desc = "Harpoon view marks" })

			vim.keymap.set("n", "<S-H>", function()
				harpoon:list():prev()
			end, { desc = "Harpoon prev mark" })

			vim.keymap.set("n", "<S-L>", function()
				harpoon:list():next()
			end, { desc = "Harpoon next mark" })
		end,
	},
}
