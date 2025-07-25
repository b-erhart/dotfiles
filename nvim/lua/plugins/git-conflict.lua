MiniDeps.add({
    source = "akinsho/git-conflict.nvim",
})

MiniDeps.later(function()
    require("git-conflict").setup({
        default_mappings = {
            ours = '<leader>co',
            theirs = '<leader>ct',
            none = '<leader>cx',
            both = '<leader>cb',
            next = '<leader>cn',
            prev = '<leader>cp',
        },
    })

    vim.keymap.set({ "n", "v" }, "<leader>cl", function()
        vim.cmd("GitConflictRefresh")
        vim.defer_fn(function()
            vim.cmd("GitConflictListQf")
        end, 150)
    end)
end)
