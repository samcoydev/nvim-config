require("autoclose").setup({
    keys = {
        [">"] = { escape = false, close = false, pair = "<>", disabled_filetypes = {} },
        ["'"] = { escape = false, close = false, pair = "''", disabled_filetypes = {} },
        ['"'] = { escape = false, close = false, pair = '""', disabled_filetypes = {} },
    },
    options = {
        auto_indent = true,
        disabled_filetypes = { "text", "markdown" }
    }
})
