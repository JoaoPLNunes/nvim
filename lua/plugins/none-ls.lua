return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.diagnostics.pylint,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
                null_ls.builtins.code_actions.refactoring,
                null_ls.builtins.formatting.clang_format,
                null_ls.builtins.diagnostics.cppcheck,
            },
        })
        vim.keymap.set("n", "<leader>gf", function()
            vim.lsp.buf.format({
                filter = function(client)
                    return client.name == "null-ls"
                end,
                async = true,
            })
        end, {})
    end,
}

