function SetColors(color)
    if color ~= nil then
        vim.cmd.colorscheme(color)
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

        vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none", fg = "none" })
        vim.opt.fillchars = { eob = ' ' }

        return
    end

    vim.cmd.colorscheme("kanagawa")
    require("kanagawa").setup({
        overrides = function(colors)
            local theme = colors.theme
            return {
                Normal = { bg = 'none' },
                NormalFloat = { bg = 'none' },
                EndOfBuffer = { bg = 'none', fg = 'none' },
            }
        end
    })
end

SetColors()
