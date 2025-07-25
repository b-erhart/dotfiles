-- clone "mini.deps" manually
local path_package = vim.fn.stdpath("data") .. "/site/"
local deps_path = path_package .. "pack/deps/start/mini.deps"
if not vim.loop.fs_stat(deps_path) then
    vim.cmd("echo 'Installing `mini.deps`' | redraw")
    local clone_cmd = {
        "git", "clone", "--filter=blob:none",
        "https://github.com/echasnovski/mini.deps", deps_path
    }
    vim.fn.system(clone_cmd)
    vim.cmd("packadd mini.deps | helptags ALL")
    vim.cmd("echo 'Installed `mini.deps`' | redraw")
end

-- set up mini.deps
require("mini.deps").setup({ path = { package = path_package } })

-- let mini.deps manage itself
MiniDeps.add({ source = "echasnovski/mini.deps" })

-- source plugin configs
require("plugins.kanagawa")

require("plugins.oil")
require("plugins.lualine")
require("plugins.guess-indent")
require("plugins.mason-lspconfig")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.blink-cmp")
require("plugins.git-conflict")

require("plugins.mini-diff")
require("plugins.mini-pairs")
require("plugins.mini-trailspace")
