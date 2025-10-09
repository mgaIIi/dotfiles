-- ============================================================================
-- BASIC OPTIONS
-- ============================================================================

-- Set the leader key to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set basic editor options
vim.opt.number = true           -- Show line numbers
vim.opt.relativenumber = true   -- Show relative line numbers
vim.opt.tabstop = 4             -- A tab character is 4 spaces
vim.opt.shiftwidth = 4          -- Indentation for auto-indent
vim.opt.expandtab = true        -- Use spaces instead of tabs
vim.opt.autoindent = true       -- Copy indent from previous line
vim.opt.smartindent = true      -- Smarter auto-indenting
vim.opt.wrap = true            -- Don't wrap lines
vim.opt.hlsearch = true         -- Highlight search results
vim.opt.incsearch = true        -- Highlight search as you type
vim.opt.showmode = false        -- Don't show -- INSERT -- etc.
vim.opt.clipboard = 'unnamedplus' -- Use system clipboard
vim.opt.termguicolors = true    -- Enable 24-bit colors
vim.opt.cmdheight = 1           -- Give more room for the command line
vim.opt.signcolumn = 'yes'      -- Always show the sign column
vim.opt.whichwrap:append('<,>,h,l')

-- Better splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- ============================================================================
-- PLUGIN MANAGEMENT: LAZY.NVIM
-- ============================================================================

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Define the plugins to be loaded
require('lazy').setup({
  -- COLORSCHEME
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000, config = function()
    vim.cmd.colorscheme('catppuccin')
  end },

  -- FILE EXPLORER
  {
    'nvim-tree/nvim-tree.lua',
    cmd = 'NvimTreeToggle',
    keys = {
      { '<leader>e', '<cmd>NvimTreeToggle<cr>', desc = 'Toggle file tree' }
    },
    config = function()
      require('nvim-tree').setup()
    end,
  },

  -- STATUS LINE
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    dependencies = { 'nvim-tree/nvim-tree.lua' },
    config = function()
      require('lualine').setup({
        options = {
          icons_enabled = true,
          theme = 'auto',
          component_separators = '|',
          section_separators = '',
        },
      })
    end,
  },

  -- TELESCOPE (Fuzzy Finder)
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Find files' },
      { '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Live grep' },
      { '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'Buffers' },
    },
  },
})

-- ============================================================================
-- KEYBINDINGS
-- ============================================================================

-- Remap escape to 'jk' for quicker normal mode entry
-- vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Quick Escape' 

-- Center the view when jumping
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll Down and Center' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll Up and Center' })
vim.keymap.set('n', '<leader>w', '<cmd>w<cr>', { desc = 'Save' })
vim.keymap.set('n', '<leader>q', '<cmd>q<cr>', { desc = 'Quit' })
vim.keymap.set('n', '<leader>Q', '<cmd>qa!<cr>', { desc = 'Quit all' })
