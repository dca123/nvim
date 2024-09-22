require("telescope").load_extension("persisted")

vim.keymap.set("n", "<leader>ps", ":Telescope persisted<CR>", { desc = "List sessions" })
vim.keymap.set("n", "<leader>ls", ":SessionLoad<CR>", { desc = "Load Session", silent = true })
