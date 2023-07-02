function map_command(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<space>ff", builtin.find_files, {})
vim.keymap.set("n", "<space>fg", builtin.live_grep, {})
vim.keymap.set("n", "<space>fb", builtin.buffers, {})
vim.keymap.set("n", "<space>fh", builtin.help_tags, {})

map_command("n", "<Space>fd", ":HopWord<CR>")

vim.keymap.set("n", "<C-H>", "<C-W>h", {})
vim.keymap.set("n", "<C-J>", "<C-W>j", {})
vim.keymap.set("n", "<C-K>", "<C-W>k", {})
vim.keymap.set("n", "<C-L>", "<C-W>l", {})

vim.keymap.set("n", "<space>fr", ":NvimTreeToggle<CR>", {})
