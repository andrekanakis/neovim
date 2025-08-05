-- init.lua

require("opts")
require("keymaps")
require("autocmds")

vim.pack.add({
  { src = "https://github.com/stevearc/oil.nvim" },
  { src = "https://github.com/echasnovski/mini.pick" },
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/projekt0n/github-nvim-theme" },
  { src = "https://github.com/lukas-reineke/indent-blankline.nvim" },
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
  { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
  { src = "https://github.com/folke/which-key.nvim" },
  { src = "https://github.com/echasnovski/mini.surround" },
  { src = "https://github.com/echasnovski/mini.pairs" },
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
  { src = "https://github.com/echasnovski/mini.completion" },
  { src = "https://github.com/echasnovski/mini.snippets" }, 
  { src = "https://github.com/supermaven-inc/supermaven-nvim" },
})

-- unloaded plugins
-- { src = "https://github.com/ibhagwan/fzf-lua" },
-- { src = "https://github.com/windwp/nvim-autopairs" },
-- { src = "https://github.com/rachartier/tiny-inline-diagnostic.nvim" },

require("mason").setup()
require("mini.pick").setup()
require("oil").setup()
require("ibl").setup()
require("lspconfig").ruff.setup(require("plugin-configs")["ruff"])
require('lspconfig').basedpyright.setup(require("plugin-configs")["basedpyright"])
require("plenary") -- Telescope dependency
require("telescope").setup()
require("which-key").setup(require("plugin-configs")["which-key"])
require("mini.surround").setup()
require("mini.pairs").setup()
require("nvim-web-devicons").setup()
require("mini.completion").setup()
require("mini.snippets").setup()
require("supermaven-nvim").setup(require("plugin-configs")["supermaven-nvim"])

-- unloaded requires
-- require("tiny-inline-diagnostic").setup()
-- require("fzf-lua").setup(require("plugin-configs")["fzf-lua"])
-- require("nvim-autopairs").setup()

vim.cmd.colorscheme("github_dark_dimmed")

vim.lsp.enable({ "lua_ls", "gopls", "ruff", "basedpyright", })
