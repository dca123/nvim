local lsp = require("lsp-zero").preset({})
lsp.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp.default_keymaps({ buffer = bufnr })
	vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { buffer = bufnr })
	vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", { buffer = bufnr })
end)

-- Configure lua language server for neovim
require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())

-- Configure gopls language server for neovim, uses the config from go.nvim package

lsp.ensure_installed({
	"lua_ls",
	"ts_ls",
	"jsonls",
	"eslint",
	"astro",
	"tailwindcss",
	"rust_analyzer",
	"gopls",
})

local cfg = require("go.lsp").config() -- config() return the go.nvim gopls setup
require("lspconfig").gopls.setup(cfg)

lsp.setup()

local cmp = require("cmp")
cmp.setup({
	preselect = "item",
	completion = {
		completeopt = "menu,menuone,noinsert",
	},
	mapping = {
		["<C-Space>"] = cmp.mapping.complete(),
		["<CR>"] = cmp.mapping.confirm({ select = false }),
	},
})
