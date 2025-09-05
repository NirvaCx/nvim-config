vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                -- Tell the language server to recognize the `vim` global.
                globals = { "vim" },
            },
            -- Make the server aware of Neovim runtime files for better autocompletion.
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
        },
    },
})
