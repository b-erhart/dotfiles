return {
    "lervag/vimtex",
    ft = { "tex" },
    init = function()
        vim.g.vimtex_mappings_enabled = 0
        vim.g.vimtex_quickfix_mode = 0

        vim.api.nvim_create_autocmd("FileType", {
            pattern = "tex",
            callback = function()
                vim.keymap.set({ "n", "v" }, "<leader>xr", "<plug>(vimtex-compile)", { buffer = true })
                vim.keymap.set({ "n", "v" }, "<leader>xb", "<plug>(vimtex-compile-ss)", { buffer = true })
                vim.keymap.set({ "n", "v" }, "<leader>xe", "<plug>(vimtex-errors)", { buffer = true })
                vim.keymap.set({ "n", "v" }, "<leader>xo", "<plug>(vimtex-compile-output)", { buffer = true })
                vim.keymap.set({ "n", "v" }, "<leader>xc", "<CMD>VimtexCountWords<CR>", { buffer = true })
            end,
        })
    end
}
