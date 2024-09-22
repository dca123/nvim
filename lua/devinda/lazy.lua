require("lazy").setup({
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		-- or                              , branch = '0.1.x',
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{
		"stevearc/conform.nvim",
		opts = {},
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	},
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		dependencies = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ "williamboman/mason.nvim" }, -- Optional
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	},
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {
			-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
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
		version = "^1.0.0", -- optional: only update when a new 1.x version is released
	},
	{
		"numToStr/Comment.nvim",
		dependencies = {
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
		opts = {},
		lazy = false,
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	},
	{

		"windwp/nvim-ts-autotag",
		opts = {},
	},
	{
		"olimorris/persisted.nvim",
		config = true,
		lazy = true,
	},
	{
		"goolord/alpha-nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("alpha").setup(require("alpha.themes.dashboard").config)
		end,
	},
	{

		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
	{
		"andweeb/presence.nvim",
		opts = {
			neovim_image_text = "btw i use neovim",
		},
	},
	{
		"sindrets/diffview.nvim",
	},
	{
		"tpope/vim-fugitive",
	},
	{
		"declancm/cinnamon.nvim",
		config = function()
			require("cinnamon").setup()
		end,
	},
	{
		"ray-x/go.nvim",
		dependencies = { -- optional packages
			"neovim/nvim-lspconfig",
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("go").setup({
				lsp_cfg = false,
			})
		end,
		event = { "CmdlineEnter" },
		ft = { "go", "gomod" },
		build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
	},
	{
		"m4xshen/hardtime.nvim",
		dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
		opts = {
			showmode = false,
		},
	},
	{
		"mfussenegger/nvim-dap",
	},
	{ "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
	{ "mxsdev/nvim-dap-vscode-js" },
	{
		"microsoft/vscode-js-debug",
		build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
	},
	{
		"nat-418/boole.nvim",
		opts = {
			mappings = {
				increment = "<C-a>",
			},
		},
	},
}, {
	install = {
		colorscheme = { "tokyonight" },
	},
})
