vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

  -- Navigate vim panes better
  vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
  vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
  vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
  vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

  -- Save current file with leader s
  vim.keymap.set('n', '<leader>s', ':w<CR>')
  vim.keymap.set('n', '<c-s>', ':w<CR>')

-- Comment line with leader 7
vim.keymap.set('n', '<leader>7', ':s/^/#<CR>')
-- Uncomment line with leader 8
vim.keymap.set('n', '<leader>8', ':s/^#//<CR>')

-- move the cursor up and down 5 lines with ctrl-j and ctrl-k
vim.keymap.set('n', '<c-j>', '5j')
vim.keymap.set('n', '<c-k>', '5k')

-- when I yank something, yank it to the system clipboard
vim.cmd("set clipboard=unnamedplus")


vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true
