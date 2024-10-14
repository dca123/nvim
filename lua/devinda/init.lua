require("devinda.remap")

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
		-- Check for existing float windows before opening a new diagnostic window
		for _, win in ipairs(vim.api.nvim_list_wins()) do
			local config = vim.api.nvim_win_get_config(win)
			if config.relative ~= "" then
				return
			end
		end

		-- Open diagnostic float window with a delay to prevent collision with hover info
		vim.defer_fn(function()
			vim.diagnostic.open_float(nil, opts)
		end, 200) -- Adjust the delay (in milliseconds) as needed
	end,
})

vim.api.nvim_create_augroup("ClearSearchHighlight", { clear = true })
vim.api.nvim_create_autocmd("CmdlineEnter", {
	group = "ClearSearchHighlight",
	pattern = { "/", "\\?" },
	callback = function()
		vim.opt.hlsearch = true
	end,
})
vim.api.nvim_create_autocmd("CmdlineLeave", {
	group = "ClearSearchHighlight",
	pattern = { "/", "\\?" },
	callback = function()
		vim.opt.hlsearch = false
	end,
})

vim.opt.swapfile = false
vim.opt.mouse = ""
vim.opt.scrolloff = 999
