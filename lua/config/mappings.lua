local function keymap(mode, key, command, opts)
	opts = opts or {}
	opts.noremap = true
	opts.silent = false
	vim.keymap.set(mode, key, command, opts)
end

-- ┌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┐
-- ╎ NOTE: Mappings for Gitsign plugin can be found in lua/plugins/gitsign.lua ╎
-- └╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┘

-- CTRL-j & CTRL-k to move line(s) down or up respectively in normal, visual and insert modes
keymap('n', '<C-j>', ":m .+1<CR>==", { desc = "Move the current line down in Normal mode" })
keymap('n', '<C-k>', ":m .-2<CR>==", { desc = "Move the current line up in Normal mode" })
keymap('v', '<C-j>', ":m '>+1<CR>gv=gv", { desc = "Move the selected line(s) down" })
keymap('v', '<C-k>', ":m '<-2<CR>gv=gv", { desc = "Move the selected line(s) up" })
keymap('i', '<C-j>', "<Esc>:m .+1<CR>==gi", { desc = "Move the current line down in Insert mode" })
keymap('i', '<C-k>', "<Esc>:m .-2<CR>==gi", { desc = "Move the current line up in Insert mode" })

-- Select all
keymap({ 'n', 'v', 'i' }, '<C-a>', "<Esc>gg0vG$", { desc = "Select all text in Normal/Visual/Insert modes" })

-- Resizing windows
keymap('n', '<C-down>', ':resize +3<CR>', { desc = "Increase current window height by 3" })
keymap('n', '<C-up>', ':resize -3<CR>', { desc = "Decrease current window height by 3" })
keymap('n', '<C-right>', ':vertical resize +3<CR>', { desc = "Increase current window width by 3" })
keymap('n', '<C-left>', ':vertical resize -3<CR>', { desc = "Decrease current window width by 3" })

-- better indentation
-- allows you to shift selected text to the right or left using the > and < keys in visual mode, while maintaining the original selection.
keymap('v', '>', '>gv', { desc = "right indentation" })
keymap('v', '<', '<gv', { desc = "left indentation" })

-- which-key.nvim key mappings
keymap('n', '<leader>?', function() require("which-key").show({global = false}) end, { desc = "Buffer local keymaps (which-key)" })
