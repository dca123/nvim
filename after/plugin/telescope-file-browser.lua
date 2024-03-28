require("telescope").load_extension("file_browser")

vim.keymap.set(
	"n",
	"<leader>fb",
	":Telescope file_browser path=%:p:h select_buffer=true<CR>",
	{ noremap = true, desc = "Open file browser" }
)
