local function keymap(mode, key, command)
	local opts = { noremap = true, silent = true }
	vim.api.nvim_set_keymap(mode, key, command, opts)
end

-- INFO: CTRL-j & CTRL-k to move selected lines down & up respectively, in visual mode
keymap('v', '<C-j>', ":m '>+1<CR>gv=gv")
keymap('v', '<C-k>', ":m '<-2<CR>gv=gv")

-- INFO: CTRL-j & CTRL-k to move current lines down & up respectively, in insert and normal mode
keymap('i', '<C-j>', "<Esc>:m .+1<CR>==gi")
keymap('i', '<C-k>', "<Esc>:m .-2<CR>==gi")
keymap('n', '<C-j>', ":m .+1<CR>==")
keymap('n', '<C-k>', ":m .-2<CR>==")

-- INFO: Select all
keymap('v', '<C-a>', "<Esc>gg0vG$")
keymap('i', '<C-a>', "<Esc>gg0vG$")
keymap('n', '<C-a>', "<Esc>gg0vG$")
