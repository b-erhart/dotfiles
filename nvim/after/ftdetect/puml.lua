vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    pattern = "*.puml",
    callback = function()
        vim.opt_local.filetype = "puml"
    end,
})
