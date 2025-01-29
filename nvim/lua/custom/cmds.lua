-- [[ GENERAL AUTOCOMMANDS ]]

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({ timeout = 120 })
    end,
})
