-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({timeout = 75})
  end,
  pattern = "*",
})

-- LaTeX-specific settings
vim.api.nvim_create_autocmd("FileType", {
	pattern = "tex",
	callback = function()
        vim.opt_local.wrap = true
        vim.opt_local.linebreak = true
        vim.opt_local.spell = true
        vim.opt_local.spelllang = "de_de,en_us"

        vim.keymap.set({"n", "v"}, "<leader>lw", "<CMD>VimtexCountWords<CR>")
	end
})

-- Markdown-specific settings
vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
        vim.opt_local.wrap = true
        vim.opt_local.linebreak = true
        vim.opt_local.spell = true
        vim.opt_local.spelllang = "de_de,en_us"
        vim.opt_local.conceallevel = 2
	end
})

-- Go-specific settings
vim.api.nvim_create_autocmd("FileType", {
	pattern = "go",
	callback = function()
        vim.opt_local.expandtab = false
	end
})

-- Format Go files on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "go",
  callback = function()
   require('go.format').goimport()
  end,
})
