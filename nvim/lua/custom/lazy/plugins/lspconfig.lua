return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local lspconfig = require("lspconfig")

        require("mason").setup({})
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
            },
            handlers = {
                function(server_name)
                    lspconfig[server_name].setup({})
                end,
                ["lua_ls"] = function()
                    lspconfig.lua_ls.setup({
                        on_init = function(client)
                            local path = client.workspace_folders[1].name
                            if vim.loop.fs_stat(path .. "/.luarc.json") or vim.loop.fs_stat(path .. "/.luarc.jsonc") then
                                return
                            end

                            client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
                                runtime = {
                                    version = "LuaJIT"
                                },
                                -- make the server aware of Neovim runtime files
                                workspace = {
                                    checkThirdParty = false,
                                    library = {
                                        vim.env.VIMRUNTIME
                                    }
                                }
                            })
                        end,
                        settings = {
                            Lua = {
                                completion = {
                                    showWord = "Disable",
                                    worspaceWord = false,
                                },
                            }
                        }
                    })
                end,
                ["tsserver"] = function()
                    lspconfig.tsserver.setup({
                        init_options = {
                            plugins = {
                                {
                                    name = "@vue/typescript-plugin",
                                    location = "/home/b-erhart/.local/share/npm/lib/node_modules/@vue/typescript-plugin",
                                    -- location = "node_modules",
                                    languages = { "vue" }
                                },
                            },
                        },
                        filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
                    })
                end,
                ["volar"] = function()
                    lspconfig.volar.setup({
                        -- init_options = {
                        --     vue = {
                        --         hybridMode = false,
                        --     },
                        -- },
                    })
                end,
            },
        })

        vim.api.nvim_create_autocmd("LspAttach", {
            desc = "LSP actions",
            callback = function(event)
                local opts = { buffer = event.buf }

                vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
                vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
                vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
                vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
                vim.keymap.set("n", "go", function() vim.lsp.buf.type_definition() end, opts)
                vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
                vim.keymap.set("n", "gs", function() vim.lsp.buf.signature_help() end, opts)

                vim.keymap.set("n", "<leader>df", function() vim.lsp.buf.format({ async = true }) end, opts)
                vim.keymap.set("n", "<leader>dr", function() vim.lsp.buf.rename() end, opts)
                vim.keymap.set("n", "<leader>da", function() vim.lsp.buf.code_action() end, opts)
                vim.keymap.set("n", "<leader>ds", function() vim.diagnostic.open_float() end, opts)
                vim.keymap.set("n", "<leader>dn", function() vim.diagnostic.goto_next() end, opts)
                vim.keymap.set("n", "<leader>dp", function() vim.diagnostic.goto_prev() end, opts)
            end
        })
    end,
}
