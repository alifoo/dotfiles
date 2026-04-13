return {
	{ -- You can easily change to a different colorscheme.
		-- Change the name of the colorscheme plugin below, and then
		-- change the command in the config to whatever the name of that colorscheme is.
		--
		-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
		"folke/tokyonight.nvim",
		priority = 1000, -- Make sure to load this before all the other start plugins.
		config = function()
			---@diagnostic disable-next-line: missing-fields
			require("tokyonight").setup({
				styles = {
					comments = { italic = false }, -- Disable italics in comments
				},
			})

			-- Load the colorscheme here.
			-- Like many other themes, this one has different styles, and you could load
			-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
			-- vim.cmd.colorscheme("delek")
			-- vim.cmd("colorscheme bluloco")
			-- vim.cmd.colorscheme("nvimgelion")
		end,
	},

	{
		"alifoo/pigment.nvim",
		dir = "~/code/deliberate-practice/pigment.nvim/",
		lazy = false,
		priority = 1000,
		config = function()
			require("pigment.init").setup({ theme = "canvas" })
			-- require("pigment.init").colorscheme()
		end,
	},

	{
		"lunacookies/vim-colors-xcode",
		lazy = false,
		priority = 1000,
		config = function()
			vim.opt.termguicolors = true
			vim.cmd.colorscheme("xcodedarkhc")
		end,
	},

	{
		"cpea2506/one_monokai.nvim",
	},

	{
		"nyngwang/nvimgelion",
		config = function()
			-- do whatever you want for further customization~
		end,
	},

	{
		"projekt0n/github-nvim-theme",
		name = "github-theme",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("github-theme").setup({
				-- ...
			})

			-- vim.cmd("colorscheme github_dark_tritanopia")
		end,
	},

	{
		"yorik1984/newpaper.nvim",
		style = "dark",
	},

	{
		"navarasu/onedark.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("onedark").setup({
				style = "warmer",
			})
			-- Enable theme
			-- require("onedark").load()
		end,
	},

	{
		"zootedb0t/citruszest.nvim",
		lazy = false,
		priority = 1000,
	},

	{
		"uloco/bluloco.nvim",
		lazy = false,
		priority = 1000,
		dependencies = { "rktjmp/lush.nvim" },
		config = function()
			-- your optional config goes here, see below.
		end,
	},

	{
		"ribru17/bamboo.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("bamboo").setup({
				-- optional configuration here
				style = "multiplex",
			})
			-- require("bamboo").load()
		end,
	},

	{
		"vague2k/vague.nvim",
		config = function()
			require("vague").setup({
				-- optional configuration here
			})
		end,
	},
}
