local builtin = require("telescope.builtin")

-- vim.keymap.set("n", "<leader><leader>", "<cmd>lua require'telescope.builtin'.find_files()<cr>", {})
vim.keymap.set("n", "<leader>s", builtin.treesitter, {})
