
return {
	"folke/tokyonight.nvim",
	lazy = false,  -- Ensure it loads at startup
	priority = 1000, -- Load before other plugins
	config = function()
		vim.cmd("colorscheme tokyonight")
	end,
}

