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
  { src = "https://github.com/windwp/nvim-autopairs" },
  { src = "https://github.com/lukas-reineke/indent-blankline.nvim" },
  { src = "https://github.com/ibhagwan/fzf-lua" },
  { src = "https://github.com/rachartier/tiny-inline-diagnostic.nvim" },
})

require("mason").setup()
require("mini.pick").setup()
require("oil").setup()
require("nvim-autopairs").setup()
require("ibl").setup()
require("fzf-lua").setup(require("plugin-configs")["fzf-lua"])
require("lspconfig").ruff.setup(require("plugin-configs")["ruff"])
require('lspconfig').basedpyright.setup(require("plugin-configs")["basedpyright"])
require("tiny-inline-diagnostic").setup()

vim.cmd.colorscheme("github_dark_dimmed")

vim.lsp.enable({ "lua_ls", "gopls", "ruff", "basedpyright", })
