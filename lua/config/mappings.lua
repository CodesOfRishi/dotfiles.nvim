-- INFO: CTRL-j & CTRL-k to move selected lines down & up respectively, in visual mode
vim.api.nvim_set_keymap('v', '<C-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- INFO: CTRL-j & CTRL-k to move current lines down & up respectively, in insert and normal mode
vim.api.nvim_set_keymap('i', '<C-j>', "<Esc>:m .+1<CR>==gi", { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-k>', "<Esc>:m .-2<CR>==gi", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ":m .+1<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ":m .-2<CR>==", { noremap = true, silent = true })

