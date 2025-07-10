-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local harpoon = require("harpoon")

vim.keymap.set("n", "<leader>hm", function()
	harpoon:list():add()
end, { desc = "Harpoon add mark" })

vim.keymap.set("n", "<leader>hh", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Harpoon view marks" })

vim.keymap.set("n", "<S-h>", function()
	harpoon:list():prev({ ui_nav_wrap = true })
end, { desc = "Harpoon prev mark" })

vim.keymap.set("n", "<S-l>", function()
	harpoon:list():next({ ui_nav_wrap = true })
end, { desc = "Harpoon next mark" })
