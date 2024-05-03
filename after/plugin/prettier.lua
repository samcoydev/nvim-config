local prettier = require("prettier")

prettier.setup({
    bin = 'prettierd', -- or `'prettierd'` (v0.23.3+)
    cli_options = {
        arrow_parens = "always",
        bracket_spacing = true,
        embedded_language_formatting = "auto",
        end_of_line = "crlf",   -- Converted from crlf
        html_whitespace_sensitivity = "css",
        print_width = 120,      -- Converted from max_line_length
        prose_wrap = "always",  -- Converted from insert_final_newline
        semi = true,
        tab_width = 4,          -- Converted from tab_width
        trailing_comma = "all", -- Converted from trailing_comma
    },
    filetypes = {
        "css",
        "graphql",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "less",
        "markdown",
        "scss",
        "typescript",
        "typescriptreact",
        "yaml",
    },
})

prettier.setup({
    ["null-ls"] = {
        condition = function()
            return prettier.config_exists({
                -- if `false`, skips checking `package.json` for `"prettier"` key
                check_package_json = true,
            })
        end,
        runtime_condition = function(params)
            -- return false to skip running prettier
            return true
        end,
        timeout = 5000,
    }
})
