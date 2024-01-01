-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

-- tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- wrapping
vim.opt.wrap = false

-- backups
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true

-- search
vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- color
vim.opt.termguicolors = true

-- borders
vim.opt.scrolloff = 3
vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes"

-- shell
(function ()
    if vim.loop.os_uname().sysname == "Windows_NT" then
        vim.opt.shell = "powershell.exe"
        vim.opt.shellxquote = nil
        vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command "
        vim.opt.shellquote = ""
        vim.opt.shellpipe = "| Out-File -Encoding UTF8 %s"
        vim.opt.shellredir = "| Out-File -Encoding UTF8 %s"
    end
end)()

-- misc
vim.opt.isfname:append("@-@") -- allow unusal characters in file names
vim.opt.updatetime = 250 -- wait time in ms after stopping to type
vim.opt.formatoptions:remove({ "c", "r", "o" }) -- disable auto comments
vim.loader.enable() -- improve startup time
vim.opt.shortmess:append({ I = true }) -- disable welcome screen
vim.opt.title = true
