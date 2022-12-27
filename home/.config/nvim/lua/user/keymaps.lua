-- KEYMAPPINGS

-- helpers
local keymap_options = { noremap = true, silent = true }
local silent_options = { silent = true }
local keymap = vim.api.nvim_set_keymap


-- leader key
keymap("", "<Space>", "<Nop>", keymap_options)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- normal mode

-- window navigation
keymap("n", "<C-h>", "<C-w>h", keymap_options)
keymap("n", "<C-j>", "<C-w>j", keymap_options)
keymap("n", "<C-k>", "<C-w>k", keymap_options)
keymap("n", "<C-l>", "<C-w>l", keymap_options)
keymap("n", "<C-x>", "<C-w>c", keymap_options)

-- resize windows
keymap("n", "<C-Up>", ":resize +2<CR>", keymap_options)
keymap("n", "<C-Down>", ":resize -2<CR>", keymap_options)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", keymap_options)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", keymap_options)

-- navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", keymap_options)
keymap("n", "<S-h>", ":bprevious<CR>", keymap_options)
keymap("n", "<S-x>", ":lua MiniBufremove.delete()<CR>", keymap_options)


-- insert mode

-- quickly press jk to switch to normal mode
keymap("i", "jk", "<ESC>", keymap_options)


-- visual mode

-- indent
keymap("v", "<", "<gv", keymap_options)
keymap("v", ">", ">gv", keymap_options)

-- move selection up and down
keymap("v", "<A-j>", ":m .+1<CR>==", keymap_options)
keymap("v", "<A-k>", ":m .-2<CR>==", keymap_options)


-- visual block mode

-- move selection up and down
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", keymap_options)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", keymap_options)


-- terminal mode

-- better navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", silent_options)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", silent_options)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", silent_options)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", silent_options)


-- plugin specific
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", keymap_options)
