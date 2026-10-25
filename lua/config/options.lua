-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.opt.list = false

-- Set correct pwd when opening a directory
vim.api.nvim_create_autocmd("VimEnter", {
	pattern = "*",
	callback = function()
		local args = vim.fn.argv()
		for _, arg in ipairs(type(args) == "table" and args or {}) do
			if vim.fn.isdirectory(arg) == 1 then
				vim.cmd.cd(arg)
				break
			end
		end
	end,
})
