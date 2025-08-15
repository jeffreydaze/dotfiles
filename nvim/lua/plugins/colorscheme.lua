return {
	-- Tokyonight theme.
	{
		"folke/tokyonight.nvim",
		lazy = false, -- Set to false because I want to have the theme to load at launch
		priority = 1000, -- Setting priority above everything else so it loads first
		-- Applying the theme
		config = function()
			vim.cmd([[colorscheme tokyonight-night]])
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		end,
	},
}
