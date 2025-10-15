-- lua/keymaps.lua

local map = vim.keymap.set
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

-- Native keymaps
map('n', 'n', 'nzzzv', opts)    -- Keep cursor in middle when jumping forward
map('n', 'N', 'Nzzzv', opts)    -- Keep cursor in middle when jumping backward
map('n', '<C-d>', '<C-d><zz', opts)   -- Cursor in middle when jumping half page down
map('n', '<C-u>', '<C-u>zz', opts)    -- Cursor in middle when jumping half page up
map('n', '<C-h>', '<C-w>h', opts)   -- Jumping to left window
map('n', '<C-j>', '<C-w>j', opts)   -- Jumping to bottom window
map('n', '<C-k>', '<C-w>k', opts)   -- Jumping to top window
map('n', '<C-l>', '<C-w>l', opts)   -- Jumping to right window
map('n', '<leader>sv', ':vsplit<CR>', { desc = "[V]ertical" })    -- Splitting vertical
map('n', '<leader>sh', ':split<CR>', { desc = "[H]orizontal" })   -- Splitting horizontally
map('n', '<leader>bp', ':bp<CR>', { desc = "[P]revious" })   -- Buffer Previous
map('n', '<leader>bn', ':bn<CR>', { desc = "[N]ext"})   -- Buffer Next


-- Plugin keymaps
map('n', '<leader>fh', ':Pick help<CR>', { desc = "[H]elp"})   -- mini.pack search help
map('n', '<leader>fe', ':Oil<CR>', { desc = "[E]xplore"})   -- oil.nvim buffer file dir
map('n', '<leader>lf', vim.lsp.buf.format, { desc = "[F]ormat" })    -- format with lsp
map({ 'n', 'x' }, '<leader>la', vim.lsp.buf.code_action, { desc = '[A]ction' }) -- Code Action
map('n', '<leader>lr', vim.lsp.buf.rename, { desc = "[R]ename" })   -- Rename
map('n', '<leader>lD', vim.lsp.buf.declaration, { desc = "[D]eclaration" })    -- Goto Declaration
map('n', '<leader>ld', vim.lsp.buf.definition, { desc = "[d]efinition" })    -- Goto Definition
map('n', '<leader>/', ':Telescope current_buffer_fuzzy_find<CR>', { desc = "Search Buffer" })
map('n', '<leader>fg', ':Telescope live_grep<CR>', { desc = "[G]rep" })
map('n', '<leader>q', ':Telescope diagnostics<CR>', { desc = "[Q]uickfix Diagnostics" })
map('n', '<leader>ff', ':Telescope find_files<CR>', { desc = "[F]ind [F]iles" })


-- Unused keybinds
-- map('n', '<leader>/', ':FzfLua blines<CR>', { desc = "FzfLua current buffer" })   -- fzf current buffer
map('n', '<leader>fp', ':Pick files<CR>')    -- mini.pick, files in current dir
-- map('n', '<leader>fqn', vim.diagnostic.setloclist, { desc = 'Diagnostic [Q]uickfix [N]ative' })
