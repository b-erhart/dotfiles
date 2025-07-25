MiniDeps.add({ source = "nvim-lua/plenary.nvim" })
MiniDeps.add({ source = "nvim-telescope/telescope.nvim" })

MiniDeps.later(function()
    require("telescope").setup()
    vim.keymap.set({ "n", "v" }, "<leader>ff", "<CMD>Telescope find_files<CR>")
    vim.keymap.set({ "n", "v" }, "<leader>fg", "<CMD>Telescope live_grep<CR>")
    vim.keymap.set({ "n", "v" }, "<leader>fb", "<CMD>Telescope buffers<CR>")
end)
