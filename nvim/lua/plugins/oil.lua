require("oil").setup({
    keymaps = {
        ["q"] = { "actions.close", mode = "n" },
    },
    float = {
        padding = 4,
    },
})
vim.keymap.set({ "n", "v" }, "<leader>e", "<CMD>Oil --float<CR>")

