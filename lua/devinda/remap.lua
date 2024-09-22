vim.g.mapleader = " "

vim.keymap.set({ "n", "v" }, "cy", '"+y', { desc = "Copy to System Clipboard" })
vim.keymap.set("n", "dW", function()
	local line = vim.api.nvim_get_current_line()
	local col = vim.api.nvim_win_get_cursor(0)[2]
	local after_cursor = line:sub(col + 1)
	local quote_pos = after_cursor:find('"')

	if quote_pos then
		-- If there's a quote after the cursor, delete up to it
		vim.cmd('normal! vt"d')
	else
		-- Otherwise, perform the standard dW action
		vim.cmd("normal! dW")
	end
end, { noremap = true, silent = true })
