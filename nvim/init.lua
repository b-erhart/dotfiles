require("custom.opts")
require("custom.keys")
require("custom.cmds")

-- only load neovim plugins when running standalone
if not vim.g.vscode then
    require("custom.lazy")
end
