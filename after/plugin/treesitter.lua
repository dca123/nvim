require("nvim-treesitter.configs").setup({
	-- A list of parser names, or "all" (the five listed parsers should always be installed)
	ensure_installed = {
		"lua",
		"vim",
		"vimdoc",
		"html",
		"typescript",
		"tsx",
		"javascript",
		"jsdoc",
		"json",
		"astro",
		"go",
		"gomod",
		"gosum",
		"css",
	},
	highlight = {
		enable = true,
	},
})
