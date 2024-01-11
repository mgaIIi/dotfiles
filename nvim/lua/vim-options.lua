vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Save current file with ctrl-s
vim.keymap.set('n', '<c-s>', ':w<CR>')

-- Comment line with leader 7
vim.keymap.set('n', '<leader>7', ':s/^/#<CR>')
-- Uncomment line with leader 8
vim.keymap.set('n', '<leader>8', ':s/^#//<CR>')

-- the same thing but for visual mode
vim.keymap.set('v', '<leader>7', ':s/^/#<CR>')
vim.keymap.set('v', '<leader>8', ':s/^#//<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true
