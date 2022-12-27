-- NEOVIM OPTIONS

-- documentation: https://neovim.io/doc/user/quickref.html#Q_op

-- disable netrw in favor of nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.autoindent = true -- take indent for new line from previous line
vim.opt.autoread = true -- autom. read file when changed outside of Neovim
vim.opt.breakindent = true -- wrapped line repeats indent
vim.opt.clipboard = "unnamedplus" -- use the clipboard as the unnamed register
vim.opt.conceallevel = 0 -- whether concealable text is shown or hidden
vim.opt.copyindent = true -- make 'autoindent' use existing indent structure
vim.opt.cursorline = true -- highlight the screen line of the cursor
vim.opt.expandtab = true -- use spaces when <Tab> is inserted
vim.opt.hlsearch = true -- highlight matches with last search pattern
vim.opt.linebreak = true -- wrap long lines at a break
vim.opt.mouse = "a" -- enable the use of mouse clicks
vim.opt.number = true -- print the line number in front of each line
vim.opt.ruler = true -- show cursor line and column in the status line
vim.opt.scrolloff = 5 -- minimum nr. of lines above and below cursor
vim.opt.shiftwidth = 4 -- number of spaces to use for (auto)indent step
vim.opt.showbreak = "> " -- string to use at the start of wrapped lines
vim.opt.signcolumn = "yes" -- when and how to display the sign column
vim.opt.smartindent = true -- smart autoindenting for C programs
vim.opt.smarttab = true -- use 'shiftwidth' when inserting <Tab>
vim.opt.splitbelow = true -- new window from split is below the current one
vim.opt.splitright = true -- new window is put right of the current one
vim.opt.tabstop = 4 -- number of spaces that <Tab> in file uses
vim.opt.timeoutlen = 1000 -- time out time in milliseconds
vim.opt.wrap = true -- long lines wrap and continue on the next line

-- set formatting options for every buffer
vim.api.nvim_create_autocmd("BufEnter", {
    callback = function()
        vim.opt.formatoptions = vim.opt.formatoptions - { "c","r","o" }
    end,
})

-- allow specified keys to cross line boundaries
vim.opt.whichwrap:append {
    ['<'] = true,
    ['>'] = true,
    ['['] = true,
    [']'] = true,
}

-- close neovim if only a nvim-tree window is left
vim.o.confirm = true
vim.api.nvim_create_autocmd("BufEnter", {
    group = vim.api.nvim_create_augroup("NvimTreeClose", {clear = true}),
    callback = function()
        local layout = vim.api.nvim_call_function("winlayout", {})
        if layout[1] == "leaf" and vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(layout[2]), "filetype") == "NvimTree" and layout[3] == nil then vim.cmd("quit") end
    end
})
