require("nvim-treesitter.configs").setup({
	-- A list of parser names, or "all" (the five listed parsers should always be installed)
	ensure_installed = {
		"lua",
		"vim",
		"vimdoc",
		"typescript",
		"tsx",
		"javascript",
		"jsdoc",
		"json",
		"astro",
		"go",
		"gomod",
		"gosum",
	},
	highlight = {
		enable = true,
	},
	autotag = {
		enable = true,
	},
})
