-- [[ GENERAL SETTINGS ]]

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.wrap = false

-- backups
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.inccommand = "split"

-- colors
vim.opt.termguicolors = true

-- borders and markers
vim.opt.scrolloff = 5
vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true

-- splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- netrw
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- misc
vim.opt.updatetime = 250
vim.opt.title = true
vim.opt.showmode = false
vim.opt.formatoptions:remove({ "c", "r", "o" })
vim.opt.shortmess:append({ I = true })
vim.opt.isfname:append("@-@")
vim.loader.enable()

-- use PowerShell on Windows
if vim.loop.os_uname().sysname == "Windows_NT" then
    vim.opt.shell = "powershell.exe"
    vim.opt.shellxquote = nil
    vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command "
    vim.opt.shellquote = ""
    vim.opt.shellpipe = "| Out-File -Encoding UTF8 %s"
    vim.opt.shellredir = "| Out-File -Encoding UTF8 %s"
end
