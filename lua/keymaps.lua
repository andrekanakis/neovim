-- lua/keymaps.lua

local map = vim.keymap.set
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

-- Native keymaps
map('n', '<leader>o', ':update<CR> :source<CR>')    -- source file
map({ 'n', 'v', 'x' }, '<leader>y', '+y<CR>')
map({ 'n', 'v', 'x' }, '<leader>d', '+d<CR>')
map({ 'n', 'v', 'x' }, '<leader>s', ':e #<CR>')
map({ 'n', 'v', 'x' }, '<leader>S', ':sf #<CR>')
map('n', 'n', 'nzzzv', opts)    -- Keep cursor in middle when jumping forward
map('n', 'N', 'Nzzzv', opts)    -- Keep cursor in middle when jumping backward
map('n', '<C-d>', '<C-d><zz', opts)   -- Cursor in middle when jumping half page down
map('n', '<C-u>', '<C-u>zz', opts)    -- Cursor in middle when jumping half page up
map('n', '<C-h>', '<C-w>h', opts)   -- Jumping to left window
map('n', '<C-j>', '<C-w>j', opts)   -- Jumping to bottom window
map('n', '<C-k>', '<C-w>k', opts)   -- Jumping to top window
map('n', '<C-l>', '<C-w>l', opts)   -- Jumping to right window
map('n', '<leader>sv', ':vsplit<CR>', { desc = "Vertical split" })    -- Splitting vertical
map('n', '<leader>sh', ':split<CR>', { desc = "Horizontal split" })   -- Splitting horizontally
map('n', '<leader>bp', ':bp<CR>', { desc = "Previous buffer" })   -- Buffer Previous
map('n', '<leader>bn', ':bn<CR>', { desc = "Next buffer"})   -- Buffer Next

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Plugin keymaps
map('n', '<leader>f', ':Pick files<CR>')    -- mini.pick, files in current dir
map('n', '<leader>h', ':Pick help<CR>')   -- mini.pack search help
map('n', '<leader>e', ':Oil<CR>')   -- oil.nvim buffer file dir
map('n', '<leader>lf', vim.lsp.buf.format)    -- format with lsp
map({ 'n', 'x' }, '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code Action' }) -- Code Action
map('n', '<leader>rn', vim.lsp.buf.rename, { desc = "Rename" })   -- Rename
map('n', '<leader>gD', vim.lsp.buf.declaration, { desc = "Goto Declaration" })    -- Goto Declaration
map('n', '<leader>gd', vim.lsp.buf.definition, { desc = "Goto Definition" })    -- Goto Definition
map('n', '<leader>/', ':FzfLua blines<CR>', { desc = "FzfLua current buffer" })   -- fzf current buffer
