MiniDeps.add({ source = "nvim-lua/plenary.nvim" })
MiniDeps.add({ source = "nvim-telescope/telescope.nvim" })

MiniDeps.later(function()
    require("telescope").setup()
    vim.keymap.set({ "n", "v" }, "<leader>f", "<CMD>Telescope find_files<CR>")
    vim.keymap.set({ "n", "v" }, "<leader>b", "<CMD>Telescope buffers<CR>")
end)
