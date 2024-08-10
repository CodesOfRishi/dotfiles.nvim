local function keymap(mode, key, command, desc)
	desc = desc or ""
	vim.keymap.set(mode, key, command, { noremap = true, silent = false, desc = desc })
end

-- ┌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┐
-- ╎ NOTE: Mappings for Gitsign plugin can be found in lua/plugins/gitsign.lua ╎
-- └╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┘

-- CTRL-j & CTRL-k to move line(s) down or up respectively in normal, visual and insert modes
keymap('n', '<C-j>', ":m .+1<CR>==", "Move the current line down in Normal mode")
keymap('n', '<C-k>', ":m .-2<CR>==", "Move the current line up in Normal mode")
keymap('v', '<C-j>', ":m '>+1<CR>gv=gv", "Move the selected line(s) down")
keymap('v', '<C-k>', ":m '<-2<CR>gv=gv", "Move the selected line(s) up.")
keymap('i', '<C-j>', "<Esc>:m .+1<CR>==gi", "Move the current line down in Insert mode")
keymap('i', '<C-k>', "<Esc>:m .-2<CR>==gi", "Move the current line up in Insert mode")

-- Select all
keymap({ 'n', 'v', 'i' }, '<C-a>', "<Esc>gg0vG$", "Select all text in Normal/Visual/Insert modes")

-- Resizing windows
keymap('n', '<C-down>', ':resize +3<CR>', "Increase current window height by 3")
keymap('n', '<C-up>', ':resize -3<CR>', "Decrease current window height by 3")
keymap('n', '<C-right>', ':vertical resize +3<CR>', "Increase current window width by 3")
keymap('n', '<C-left>', ':vertical resize -3<CR>', "Decrease current window width by 3")
