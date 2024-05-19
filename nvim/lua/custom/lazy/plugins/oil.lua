return {
    "stevearc/oil.nvim",
    config = function()
        require("oil").setup({
            float = {
                padding = 5,
                max_width = 80,
                max_height = 25,
            },
        })

        vim.keymap.set({ "n", "v" }, "<leader>e", function() require("oil").toggle_float() end, {})
    end
}
