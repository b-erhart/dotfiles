MiniDeps.add({ source = "NMAC427/guess-indent.nvim" })

MiniDeps.now(function()
    require("guess-indent").setup()
end)
