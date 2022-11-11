vim.api.nvim_create_autocmd("FileType", {
	command = "set formatoptions-=cro",
})

vim.api.nvim_create_autocmd("FileType", {
	command = "set signcolumn=yes",
})

vim.api.nvim_create_autocmd("FileType", {
	command = "set tabstop=10",
})

vim.api.nvim_create_autocmd("FileType", {
	command = "set shiftwidth=10",
})

vim.api.nvim_create_autocmd("FileType", {
	command = "set softtabstop=10",
})

vim.api.nvim_create_autocmd("FileType", {
	command = "set noexpandtab",
})

vim.api.nvim_create_autocmd("FileType", {
	command = "set nohlsearch",
})

vim.api.nvim_create_autocmd("FileType", {
	command = "set nofixendofline",
})

vim.api.nvim_create_autocmd("FileType", {
	command = "set cino+=L0",
})

vim.api.nvim_create_autocmd("FileType", {
	command = "set cinoptions+=l1",
})

vim.api.nvim_create_autocmd("FileType", {
	command = "set cinoptions+=j1,(0,ws,ws",
})

vim.api.nvim_create_autocmd('TextYankPost', {
	group = vim.api.nvim_create_augroup('yank_highlight', {}),
	pattern = '*',
	callback = function()
		vim.highlight.on_yank { higroup='IncSearch', timeout=50 }
	end,
})
