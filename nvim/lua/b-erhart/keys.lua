vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- dont move cursor when pressing space in normal/visual mode
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- center selection when scrolling with <C-u>/<C-d>
vim.keymap.set({"n", "v"}, "<C-d>", "<C-d>zz")
vim.keymap.set({"n", "v"}, "<C-u>", "<C-u>zz")

-- swap j/k with gj/gk
vim.keymap.set({"n", "v"}, "j", "gj")
vim.keymap.set({"n", "v"}, "k", "gk")
vim.keymap.set({"n", "v"}, "gj", "j")
vim.keymap.set({"n", "v"}, "gk", "k")

-- alternative <Esc>s
vim.keymap.set("i", "<C-c>", "<Esc>")

-- copy/paste from system clipboard
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("v", "<leader>p", '"+p')
vim.keymap.set({"i", "c"}, "<C-v>", "<C-r>+")
vim.keymap.set({"i", "c"}, "<C-S-v>", "<C-r>+")

-- exit terminal mode with ESC
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", {silent = true})

-- keep selection when indenting
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- navigate buffers
vim.keymap.set({"n", "v"}, "<leader>bn", "<CMD>bnext<CR>")
vim.keymap.set({"n", "v"}, "<leader>bp", "<CMD>bprev<CR>")
vim.keymap.set({"n", "v"}, "<leader>bd", "<CMD>bdelete<CR>")
vim.keymap.set({"n", "v"}, "<leader>ba", "<CMD>%bdelete<CR>")

-- navigate splits
vim.keymap.set({"n", "v"}, "<leader>w", "<C-w>")

-- fix navigation with German keyboard layout
vim.opt.langmap = "ö[,ä],Ö{,Ä}"
vim.keymap.set({"n", "v"}, "<C-ö>", "<C-[>")
vim.keymap.set({"n", "v"}, "<C-ä>", "<C-]>")

