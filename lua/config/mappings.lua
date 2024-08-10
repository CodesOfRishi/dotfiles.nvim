local function keymap(mode, key, command)
	local opts = { noremap = true, silent = true }
	vim.keymap.set(mode, key, command, opts)
end

-- ┌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┐
-- ╎ NOTE: Mappings for Gitsign plugin can be found in lua/plugins/gitsign.lua ╎
-- └╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┘

-- CTRL-j & CTRL-k to move line(s) down or up respectively in normal, visual and insert modes
keymap('n', '<C-j>', ":m .+1<CR>==")
keymap('n', '<C-k>', ":m .-2<CR>==")
keymap('v', '<C-j>', ":m '>+1<CR>gv=gv")
keymap('v', '<C-k>', ":m '<-2<CR>gv=gv")
keymap('i', '<C-j>', "<Esc>:m .+1<CR>==gi")
keymap('i', '<C-k>', "<Esc>:m .-2<CR>==gi")

-- Select all
keymap({ 'n', 'v', 'i' }, '<C-a>', "<Esc>gg0vG$")

-- Resizing windows
keymap('n', '<C-down>', ':resize +3<CR>')
keymap('n', '<C-up>', ':resize -3<CR>')
keymap('n', '<C-right>', ':vertical resize +3<CR>')
keymap('n', '<C-left>', ':vertical resize -3<CR>')
