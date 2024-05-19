local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("custom.lazy.plugins", {
    ui = {
        icons = {
            cmd = "[cmd]",
            config = "[config]",
            event = "[event]",
            ft = "[ft]",
            init = "[init]",
            import = "[import]",
            keys = "[keys]",
            lazy = "[lazy]",
            loaded = "[loaded]",
            not_loaded = "[not_loaded]",
            plugin = "[plugin]",
            runtime = "[runtime]",
            require = "[require]",
            source = "[source]",
            start = "[start]",
            task = "[task]",
            list = {
                "●",
                "→",
                "*",
                "-",
            },
        }
    }
})
