return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                -- Formatter
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,

                null_ls.builtins.formatting.clang_format.with({ extra_args = { "-style=", '"{IndentWidth: 4}"' } }),

                -- Code actions

                -- Diagnostic
            },
        })
    end,
}
