function ColorMyPencils(color)
	color = color or "kanagawa"
	vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end


require("cyberdream").setup({
    transparent = true,
            italic_comments = true,
            hide_fillchars = true,
            borderless_telescope = true,
            terminal_colors = true,
})

vim.cmd("colorscheme cyberdream")

--ColorMyPencils('kanagawa')
