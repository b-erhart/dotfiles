---Set keybinding like with "vim.keymap.set", but with VSCode action ids.
---@param modes string|table VIM modes to set the keybinding for
---@param keybinding string Key combination that triggers the action
---@param action string VSCode action id
---@param opts table? Table of optional options for VIM keybindings
function vscode_keymap_set(modes, keybinding, action, opts)
    if not vim.g.vscode then
        return
    end

    local vscode = require("vscode")
    local action_func = function() vscode.action(action) end
    vim.keymap.set(modes, keybinding, action_func, opts)
end


-- leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- don't move cursor when pressing space in normal/visual mode
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- center selection when scrolling with <C-u>/<C-d>
vim.keymap.set({ "n", "v" }, "<C-d>", "<C-d>zz")
vim.keymap.set({ "n", "v" }, "<C-u>", "<C-u>zz")

-- alternative <Esc>
vim.keymap.set("i", "<C-c>", "<Esc>")

-- copy/paste from system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", "\"+y")
vim.keymap.set({ "n", "v" }, "<leader>Y", "\"+Y")
vim.keymap.set({ "n", "v" }, "<leader>p", "\"+p")
vim.keymap.set({ "n", "v" }, "<leader>P", "\"+P")
vim.keymap.set({ "i", "c" }, "<C-v>", "<C-r>+")
vim.keymap.set({ "i", "c" }, "<C-S-v>", "<C-r>+")

-- exit terminal mode with <Esc><Esc>
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { silent = true })

-- keep selection when indenting
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- navigate buffers
vim.keymap.set({ "n", "v" }, "<leader>bn", "<CMD>bnext<CR>")
vim.keymap.set({ "n", "v" }, "<leader>bp", "<CMD>bprev<CR>")
vim.keymap.set({ "n", "v" }, "<leader>bd", "<CMD>bdelete<CR>")
vim.keymap.set({ "n", "v" }, "<leader>ba", "<CMD>%bdelete<CR>")
vscode_keymap_set({ "n", "v" }, "<leader>bn", "workbench.action.nextEditor")
vscode_keymap_set({ "n", "v" }, "<leader>bp", "workbench.action.previousEditor")
vscode_keymap_set({ "n", "v" }, "<leader>bd", "workbench.action.closeActiveEditor")
vscode_keymap_set({ "n", "v" }, "<leader>ba", "workbench.action.closeAllEditors")

-- navigate tabs
vim.keymap.set({ "n", "v" }, "<leader>tc", "<CMD>tabnew<CR>")
vim.keymap.set({ "n", "v" }, "<leader>tn", "<CMD>tabnext<CR>")
vim.keymap.set({ "n", "v" }, "<leader>tp", "<CMD>tabprev<CR>")
vim.keymap.set({ "n", "v" }, "<leader>tq", "<CMD>tabclose<CR>")

-- navgate windows
vim.keymap.set({ "n", "v" }, "<leader>wh", "<C-w>h")
vim.keymap.set({ "n", "v" }, "<leader>wj", "<C-w>j")
vim.keymap.set({ "n", "v" }, "<leader>wk", "<C-w>k")
vim.keymap.set({ "n", "v" }, "<leader>wl", "<C-w>l")
vim.keymap.set({ "n", "v" }, "<leader>wv", "<C-w>v")
vim.keymap.set({ "n", "v" }, "<leader>ws", "<C-w>s")
vim.keymap.set({ "n", "v" }, "<leader>wq", "<C-w>q")

vim.keymap.set({ "n", "v" }, "<leader>x", "<CMD>noh<CR>")

-- VSCode specific keybindings - handled by plugins when running standalone
vscode_keymap_set({ "n", "v" }, "<leader>fb", "workbench.action.showAllEditors")
vscode_keymap_set({ "n", "v" }, "<leader>e", "workbench.view.explorer")
vscode_keymap_set({ "n", "v" }, "<leader>ff", "workbench.action.quickOpen")
vscode_keymap_set({ "n", "v" }, "<leader>g", "workbench.view.scm")
vscode_keymap_set({ "n", "v" }, "<leader>j", "workbench.actions.view.problems")
vscode_keymap_set({ "n", "v" }, "<leader>q", "workbench.action.showCommands")

vscode_keymap_set({ "n", "v" }, "<leader>da", "editor.action.quickFix")
vscode_keymap_set({ "n", "v" }, "<leader>dr", "editor.action.rename")
vscode_keymap_set({ "n", "v" }, "<leader>dn", "editor.action.marker.next")
vscode_keymap_set({ "n", "v" }, "<leader>dp", "editor.action.marker.prev")
vscode_keymap_set({ "n", "v" }, "<leader>ds", "problems.action.showMultilineMessage")
vscode_keymap_set({ "n", "v" }, "<leader>du", "editor.action.goToReferences")
vscode_keymap_set({ "n", "v" }, "<leader>db", "justBlame.toggleBlame")
