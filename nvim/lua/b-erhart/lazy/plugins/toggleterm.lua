return {
    "akinsho/toggleterm.nvim",
    lazy = true,
    cmd = "ToggleTerm",
    keys = {
        {"<leader>öö", "<CMD>ToggleTermToggleAll<CR>", "n"},
        {"<leader>öl", "<CMD>TermSelect<CR>", "n"},
        {"<leader>öa", "<CMD>1ToggleTerm direction=horizontal<CR>", "n"},
        {"<leader>ös", "<CMD>2ToggleTerm direction=horizontal<CR>", "n"},
        {"<leader>öd", "<CMD>3ToggleTerm direction=horizontal<CR>", "n"},
        {"<leader>öf", "<CMD>4ToggleTerm direction=horizontal<CR>", "n"},
        {"<leader>ög", "<CMD>5ToggleTerm direction=horizontal<CR>", "n"},
    },
    opts = {
        start_in_insert = false,
    },
}
