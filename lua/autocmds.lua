-- lua/autocmds.lua

vim.api.nvim_create_autocmd('TextYankPost', {
	group = vim.api.nvim_create_augroup('UserConfig', {}),
	callback = function() vim.highlight.on_yank() end,
})
