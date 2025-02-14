return {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
        vim.opt.background = "dark"
        vim.cmd.colorscheme("kanagawa")
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    end
}
