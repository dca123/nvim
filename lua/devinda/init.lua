require("devinda.remap")
require("devinda.bootstrap_lazy")
require("devinda.lazy")

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.termguicolors = true
vim.o.sessionoptions = "buffers,curdir,folds,globals,tabpages,winpos,winsize"

vim.o.updatetime = 250
vim.api.nvim_create_autocmd("CursorHold", {
	buffer = bufnr,
	callback = function()
		local opts = {
			focusable = false,
			close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
			border = "rounded",
			source = "always",
			prefix = " ",
			scope = "cursor",
		}
		vim.diagnostic.open_float(nil, opts)
	end,
})

vim.opt.swapfile = false
vim.opt.mouse = ""
vim.opt.scrolloff = 999
