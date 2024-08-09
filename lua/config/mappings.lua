local opts = { noremap = true, silent = true }

-- INFO: CTRL-j & CTRL-k to move selected lines down & up respectively, in visual mode
vim.api.nvim_set_keymap('v', '<C-j>', ":m '>+1<CR>gv=gv", opts)
vim.api.nvim_set_keymap('v', '<C-k>', ":m '<-2<CR>gv=gv", opts)

-- INFO: CTRL-j & CTRL-k to move current lines down & up respectively, in insert and normal mode
vim.api.nvim_set_keymap('i', '<C-j>', "<Esc>:m .+1<CR>==gi", opts)
vim.api.nvim_set_keymap('i', '<C-k>', "<Esc>:m .-2<CR>==gi", opts)
vim.api.nvim_set_keymap('n', '<C-j>', ":m .+1<CR>==", opts)
vim.api.nvim_set_keymap('n', '<C-k>', ":m .-2<CR>==", opts)

-- INFO: Select all
vim.api.nvim_set_keymap('v', '<C-a>', "<Esc>gg0vG$", opts)
vim.api.nvim_set_keymap('i', '<C-a>', "<Esc>gg0vG$", opts)
vim.api.nvim_set_keymap('n', '<C-a>', "<Esc>gg0vG$", opts)

