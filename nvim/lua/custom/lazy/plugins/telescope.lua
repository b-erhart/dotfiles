return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("telescope").setup({
            opts = {
                defaults = {
                    path_display = { "truncate" },
                },
            },
        })

        local builtin = require("telescope.builtin")
        vim.keymap.set({ "n", "v" }, "<leader>ff", builtin.find_files, {})
        vim.keymap.set({ "n", "v" }, "<leader>fl", builtin.live_grep, {})
        vim.keymap.set({ "n", "v" }, "<leader>fb", builtin.buffers, {})
        vim.keymap.set({ "n", "v" }, "<leader>fg", builtin.git_files, {})
    end
}
