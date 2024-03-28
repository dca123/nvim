require("telescope").load_extension("persisted")

vim.keymap.set("n", "<leader>ps", ":Telescope persisted<CR>", { desc = "List sessions" })
