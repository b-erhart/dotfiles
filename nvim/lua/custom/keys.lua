-- [[ GENERAL KEYBINDINGS ]]

-- leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- dont move cursor when pressing space in normal/visual mode
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
vim.keymap.set({ "n", "v" }, "<leader>br", "<CMD>%bdelete<CR>")

-- open netrw
vim.keymap.set({"n", "v"}, "<leader>e", "<CMD>Ex<CR>")

-- clear search highlighting
vim.keymap.set({ "n", "v" }, "<leader>c", "<CMD>noh<CR>")

-- navigate splits
vim.keymap.set({ "n", "v" }, "<C-h>", "<C-w>h")
vim.keymap.set({ "n", "v" }, "<C-j>", "<C-w>j")
vim.keymap.set({ "n", "v" }, "<C-k>", "<C-w>k")
vim.keymap.set({ "n", "v" }, "<C-l>", "<C-w>l")
