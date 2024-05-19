return {
    "lervag/vimtex",
    ft = { "tex" },
    init = function()
        vim.g.vimtex_mappings_enabled = 0

        vim.api.nvim_create_autocmd("FileType", {
            pattern = "tex",
            callback = function()
                vim.keymap.set({ "n", "v" }, "<leader>xr", "<plug>(vimtex-compile)")
                vim.keymap.set({ "n", "v" }, "<leader>xb", "<plug>(vimtex-compile-ss)")
                vim.keymap.set({ "n", "v" }, "<leader>xe", "<plug>(vimtex-errors)")
                vim.keymap.set({ "n", "v" }, "<leader>xo", "<plug>(vimtex-compile-output)")
                vim.keymap.set({ "n", "v" }, "<leader>xc", "<CMD>VimtexCountWords<CR>")
            end,
        })
    end
}
