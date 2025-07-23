MiniDeps.add({
    source = "nvim-treesitter/nvim-treesitter",
    hooks = {
        post_checkout = function()
            vim.cmd("TSUpdate")
        end
    }
})

MiniDeps.later(function()
    require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "vimdoc" },
        auto_install = true,
    })
end)
