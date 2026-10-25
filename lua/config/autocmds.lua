-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "ts", "vue", "html", "js", "scss", "css" },
	callback = function()
		vim.b.autoformat = false
	end,
})

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
