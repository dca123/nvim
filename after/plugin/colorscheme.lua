require("tokyonight").setup({
	styles = {
		sidebars = "transparent",
		floats = "transparent",
	},
	plugins = {
		barbar = true,
	},
	on_highlights = function(hl, colors)
		hl.LineNrAbove = {
			fg = colors.yellow,
		}
		hl.LineNrBelow = {
			fg = colors.yellow,
		}
		hl.LineNr = { fg = colors.red }

		hl.BufferCurrent = { fg = colors.fg, bg = colors.red1 }
		hl.BufferCurrentMod = { fg = colors.yellow, bg = colors.red1 }

		hl.BufferVisible = { fg = colors.blue1, bg = colors.blue7 }

		if #vim.api.nvim_list_wins() > 1 then
			hl.StatusLine = { bg = colors.blue7, fg = colors.yellow }
		end
	end,
})

vim.cmd([[colorscheme tokyonight]])

local colors = require("tokyonight.colors.night")

local group = vim.api.nvim_create_augroup("ChangeHighlights", { clear = true })
vim.api.nvim_create_autocmd({ "WinEnter", "WinLeave" }, {
	group = group,
	callback = function()
		if #vim.api.nvim_list_wins() > 1 then
			vim.api.nvim_set_hl(0, "StatusLine", { bg = colors.blue7, fg = colors.yellow })
		else
			vim.api.nvim_set_hl(0, "StatusLine", { bg = nil, fg = nil }) -- reset to default
		end
	end,
})
