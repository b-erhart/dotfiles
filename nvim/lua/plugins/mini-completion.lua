MiniDeps.add({ source = "echasnovski/mini.completion" })

MiniDeps.later(function ()
    require("mini.completion").setup()
end)
