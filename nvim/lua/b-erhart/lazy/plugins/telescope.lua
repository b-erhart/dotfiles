return {
    {
        "nvim-telescope/telescope.nvim",
        version = "0.1.2",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        lazy = true,
        cmd = "Telescope",
        keys = {
            {"<leader>f", "<CMD>Telescope find_files<CR>", "n"},
            {"<leader>s", "<CMD>Telescope live_grep<CR>", "n"},
            {"<leader>bl", "<CMD>Telescope buffers<CR>", "n"},
        },
        opts = {
            defaults = {
                path_display = { "truncate" }
            },
        },
    }
}
