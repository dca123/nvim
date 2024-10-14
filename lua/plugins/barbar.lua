return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	opts = {
		animation = true,
		insert_at_start = true,
		icons = {
			pinned = { button = "", filename = true },
			filetype = {
				enabled = true,
				custom_colors = true,
			},
		},
	},
	version = "^1.0.0",
}
