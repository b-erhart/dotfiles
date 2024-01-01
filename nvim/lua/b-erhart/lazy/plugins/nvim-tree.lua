return {
    {
        "nvim-tree/nvim-tree.lua",
        lazy = true,
        cmd = {
            "NvimTreeOpen",
            "NvimTreeClose",
            "NvimTreeToggle",
            "NvimTreeFocus"
        },
        keys = {
            {"<leader>e", "<CMD>NvimTreeToggle<CR>", "n"},
        },
        opts = {
            renderer = {
                icons = {
                    git_placement = "after",
                    show = {
                        file = false,
                        folder = false,
                    },
                    glyphs = {
                        modified = "~",
                        folder = {
                            arrow_closed = ">",
                            arrow_open = "v",
                        },
                        git = {
                            unstaged = "✗",
                            staged = "✓",
                            unmerged = "!",
                            renamed = "➜",
                            untracked = "*",
                            deleted = "-",
                            ignored = "i",
                        },
                    },
                },
            },
            diagnostics = {
                enable = true,
                show_on_dirs = true,
                icons = {
                    hint = "H",
                    info = "I",
                    warning = "W",
                    error = "E",
                },
                severity = {
                    min = vim.diagnostic.severity.ERROR,
                    max = vim.diagnostic.severity.ERROR,
                },
            },
            sync_root_with_cwd = true,
            respect_buf_cwd = true,
            update_focused_file = {
                enable = true,
                update_root = false,
            },
        },
        config = function(_, opts)
            require("nvim-tree").setup(opts)

            -- close nvim if nvim-tree is the last buffer
            vim.api.nvim_create_autocmd("QuitPre", {
                callback = function()
                    local invalid_win = {}
                    local wins = vim.api.nvim_list_wins()
                    for _, w in ipairs(wins) do
                        local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(w))
                        if bufname:match("NvimTree_") ~= nil then
                            table.insert(invalid_win, w)
                        end
                    end
                    if #invalid_win == #wins - 1 then
                        -- Should quit, so we close all invalid windows.
                        for _, w in ipairs(invalid_win) do vim.api.nvim_win_close(w, true) end
                    end
                end
            })

            -- keep window alive if buffer is deleted with nvim-tree open
            vim.api.nvim_create_autocmd("BufEnter", {
                nested = true,
                callback = function()
                    local api = require('nvim-tree.api')

                    -- Only 1 window with nvim-tree left: we probably closed a file buffer
                    if #vim.api.nvim_list_wins() == 1 and api.tree.is_tree_buf() then
                        -- Required to let the close event complete. An error is thrown without this.
                        vim.defer_fn(function()
                            -- close nvim-tree: will go to the last hidden buffer used before closing
                            api.tree.toggle({find_file = true, focus = true})
                            -- re-open nivm-tree
                            api.tree.toggle({find_file = true, focus = true})
                            -- nvim-tree is still the active window. Go to the previous window.
                            vim.cmd("wincmd p")
                        end, 0)
                    end
                end
            })
        end,
    }
}
