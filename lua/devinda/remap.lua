vim.g.mapleader = " "

vim.keymap.set({ "n", "v" }, "cy", '"+y', { desc = "Copy to System Clipboard" })

vim.keymap.set({ "n" }, "<M-e>", "<C-w>h", { desc = "Move window left" })
vim.keymap.set({ "n" }, "<M-j>", "<C-w>j", { desc = "Move window bottom" })
vim.keymap.set({ "n" }, "<M-k>", "<C-w>k", { desc = "Move window top" })
vim.keymap.set({ "n" }, "<M-l>", "<C-w>l", { desc = "Move window right" })
vim.keymap.set({ "n" }, "<M-v>", "<C-w>v", { desc = "Split Vertically" })
vim.keymap.set({ "n" }, "<M-q>", "<C-w>q", { desc = "Quit Window" })
