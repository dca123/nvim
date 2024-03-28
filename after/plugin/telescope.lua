local telescope = require("telescope")
local fb_actions = require("telescope._extensions.file_browser.actions")

telescope.setup({
	pickers = {
		find_files = {
			find_command = { "rg", "--files", "--hidden", "-g", "!.git" },
		},
	},
	extensions = {
		file_browser = {
			mappings = {
				["i"] = {
					-- ["<C-a>"] = fb_actions.create,
					-- your custom insert mode mappings
				},
				["n"] = {
					-- your custom normal mode mappings
				},
			},
		},
	},
})

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader><leader>", "<cmd>lua require'telescope.builtin'.find_files()<cr>", { desc = "Find files" })
vim.keymap.set("n", "<leader>s", builtin.treesitter, { desc = "Treesitter" })
