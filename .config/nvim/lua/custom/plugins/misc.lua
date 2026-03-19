return {
	"NMAC427/guess-indent.nvim", -- Detect tabstop and shiftwidth automatically

	{
		"github/copilot.vim",
	},

	{
		"nvim-java/nvim-java",
		config = function()
			require("java").setup()
			vim.lsp.enable("jdtls")
		end,
	},
}
