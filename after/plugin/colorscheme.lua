require("tokyonight").setup({
	styles = {
		sidebars = "transparent",
		floats = "transparent",
	},
	on_highlights = function(hl, colors)
		hl.LineNrAbove = {
			fg = colors.yellow,
		}
		hl.LineNrBelow = {
			fg = colors.yellow,
		}
		hl.LineNr = { fg = colors.red }
	end,
})

vim.cmd([[colorscheme tokyonight]])
