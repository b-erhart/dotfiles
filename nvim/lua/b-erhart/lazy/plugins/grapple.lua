return {
    "cbochs/grapple.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    lazy = true,
    cmd = {
        "GrappleTag",
        "GrappleUntag",
        "GrappleToggle",
        "GrappleSelect",
        "GrappleCycle",
        "Grapple",
        "GrappleReset",
        "GrapplePopup",
    },
    keys = {
        {"<leader>jt", "<CMD>GrappleToggle<CR>", "n"},
        {"<leader>ja", "<CMD>GrappleSelect key=1<CR>", "n"},
        {"<leader>js", "<CMD>GrappleSelect key=2<CR>", "n"},
        {"<leader>jd", "<CMD>GrappleSelect key=3<CR>", "n"},
        {"<leader>jf", "<CMD>GrappleSelect key=4<CR>", "n"},
        {"<leader>jg", "<CMD>GrappleSelect key=5<CR>", "n"},
        {"<leader>jl", "<CMD>GrapplePopup tags<CR>", "n"},
    },
}
