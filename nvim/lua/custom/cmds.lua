local be_group = vim.api.nvim_create_augroup("b-erhart", {})

-- Rebind gd in help buffers to accomodate for German keyboard layout
vim.api.nvim_create_autocmd("FileType", {
    group = be_group,
    pattern = "help",
    callback = function()
        vim.keymap.set("n", "gd", "<C-]>")
    end,
})

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    group = be_group,
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({ timeout = 75 })
    end,
})

-- Disable automatic comments for all file types
vim.api.nvim_create_autocmd("FileType", {
    group = be_group,
    pattern = "*",
    callback = function()
        vim.opt.formatoptions:remove({ "c", "r", "o" })
    end,
})

-- LaTeX-specific settings
vim.api.nvim_create_autocmd("FileType", {
    group = be_group,
    pattern = "tex",
    callback = function()
        vim.opt_local.colorcolumn = ""
        vim.opt_local.wrap = true
        vim.opt_local.linebreak = true
        vim.opt_local.spell = true
        vim.opt_local.spelllang = "de_de,en_us"

        vim.keymap.set({ "n", "v" }, "<leader>lw", "<CMD>VimtexCountWords<CR>")
    end,
})

-- Markdown-specific settings
vim.api.nvim_create_autocmd("FileType", {
    group = be_group,
    pattern = "markdown",
    callback = function()
        vim.opt_local.colorcolumn = ""
        vim.opt_local.wrap = true
        vim.opt_local.linebreak = true
        vim.opt_local.spell = true
        vim.opt_local.spelllang = "de_de,en_us"
    end
})

-- Go-specific settings
vim.api.nvim_create_autocmd("FileType", {
    group = be_group,
    pattern = "go",
    callback = function()
        vim.opt_local.expandtab = false
    end
})

-- Format Go files on save
vim.api.nvim_create_autocmd("BufWritePre", {
    group = be_group,
    pattern = "go",
    callback = function()
        require("go.format").goimport()
    end,
})
