require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettierd" },
		typescript = { "prettierd" },
		typescriptreact = { "prettierd" },
		javascriptreact = { "prettierd" },
		css = { "prettierd" },
		json = { "prettierd" },
		jsonc = { "prettierd" },
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_fallback = true,
	},
	ft_parsers = {
		javascript = "babel",
		javascriptreact = "babel",
		typescript = "typescript",
		typescriptreact = "typescript",
		--     vue = "vue",
		css = "css",
		--     scss = "scss",
		--     less = "less",
		html = "html",
		json = "json",
		jsonc = "json",
		--     yaml = "yaml",
		--     markdown = "markdown",
		--     ["markdown.mdx"] = "mdx",
		--     graphql = "graphql",
		--     handlebars = "glimmer",
	},
	-- Use a specific prettier parser for a file extension
	ext_parsers = {
		-- qmd = "markdown",
	},
})

vim.api.nvim_create_user_command("Format", function(args)
	local range = nil
	if args.count ~= -1 then
		local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
		range = {
			start = { args.line1, 0 },
			["end"] = { args.line2, end_line:len() },
		}
	end
	require("conform").format({ async = true, lsp_fallback = true, range = range })
end, { range = true })
