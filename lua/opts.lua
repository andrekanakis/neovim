-- lua/opts.lua

local opt = vim.opt

opt.number           = true     -- show absolute line numbers
opt.relativenumber   = true     -- show relative line numbers
opt.cursorline       = true     -- highlight the screen line of the cursor
opt.wrap             = false    -- disable line wrapping
opt.scrolloff        = 10       -- minimum lines to keep above and below cursor
opt.sidescrolloff    = 8        -- minimum columns to keep left and right of cursor

opt.tabstop          = 2        -- number of spaces that a <Tab> in the file counts for
opt.shiftwidth       = 2        -- number of spaces to use for each step of (auto)indent
opt.softtabstop      = 2        -- number of spaces that a <Tab> counts for while editing
opt.expandtab        = true     -- convert tabs to spaces
opt.smartindent      = true     -- smart autoindenting when starting a new line
opt.autoindent       = true     -- copy indent from current line when starting a new line

opt.ignorecase       = true     -- ignore case in search patterns
opt.smartcase        = true     -- override 'ignorecase' if search contains uppercase
opt.incsearch        = true     -- show search matches as you type
opt.hlsearch         = false    -- do not highlight all search matches

opt.termguicolors    = true     -- enable 24-bit RGB color in the TUI
opt.signcolumn       = "yes"    -- always show the sign column to avoid text shifting
opt.colorcolumn      = "100"    -- highlight column 100 as a guide
opt.showmatch        = true     -- briefly jump to matching bracket
opt.matchtime        = 2        -- time (tenths of a second) to show the matching bracket
opt.completeopt      = "menuone,noinsert,noselect" -- options for insert mode completion
opt.showmode         = true     -- show the mode (e.g., -- INSERT --) in command line
opt.pumheight        = 10       -- maximum number of items to show in the popup menu
opt.pumblend         = 10       -- pseudo-transparency for the popup menu
opt.conceallevel     = 0        -- show text normally (no concealing)
opt.lazyredraw       = true     -- do not redraw while executing macros, registers, and other commands
opt.synmaxcol        = 300      -- do not syntax highlight long lines beyond this column

opt.backup           = false    -- do not keep a backup file after overwriting a file
opt.writebackup      = false    -- do not keep a backup file while editing
opt.swapfile         = false    -- do not use a swapfile for the buffer
opt.undofile         = true     -- enable persistent undo so undo history survives file close
opt.undodir          = vim.fn.expand('~/.vim/undodir') -- directory where undo files are stored
opt.autoread         = true     -- automatically read a file when changed outside of Vim

opt.mouse            = 'a'      -- enable mouse support in all modes
opt.clipboard        = "unnamedplus" -- use the system clipboard for all operations
opt.encoding         = "UTF-8"  -- set default encoding to UTF-8
opt.splitbelow       = true     -- new horizontal splits go below the current window
opt.splitright       = true     -- new vertical splits go to the right of the current window
opt.winborder        = "rounded" -- set window border style to rounded (Neovim 0.12+)
