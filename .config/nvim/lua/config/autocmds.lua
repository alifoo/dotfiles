-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Filetype-specific tab settings
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "lua" },
	callback = function()
		vim.opt.tabstop = 8
		vim.opt.shiftwidth = 8
		vim.opt.expandtab = true
		vim.opt.softtabstop = 8 -- Ensures the backspace key also works with 4 spaces
	end,
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "c", "cpp" },
	callback = function()
		vim.opt.tabstop = 4
		vim.opt.shiftwidth = 4
		vim.opt.expandtab = true
		vim.opt.softtabstop = 4 -- Ensures the backspace key also works with 4 spaces
	end,
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
	callback = function()
		vim.opt.tabstop = 2
		vim.opt.shiftwidth = 2
		vim.opt.expandtab = true
		vim.opt.softtabstop = 2 -- Ensures the backspace key also works with 4 spaces
	end,
})

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})
