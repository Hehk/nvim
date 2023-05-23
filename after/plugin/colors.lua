if vim.g.vscode then
	return
end

require("kanagawa").setup({
	commentStyle = { italic = true },
	colors = {
		theme = {
			all = {
				ui = {
					bg_gutter = "none",
				},
			},
		},
	},
	theme = "dragon",
	background = {
		dark = "dragon",
		light = "lotus",
	},
	overrides = function(colors)
		local theme = colors.theme
		return {
			NormalFloat = { bg = "none" },
			FloatBorder = { bg = "none" },
			FloatTitle = { bg = "none" },

			Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
			PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
			PmenuSbar = { bg = theme.ui.bg_m1 },
			PmenuThumb = { bg = theme.ui.bg_p2 },

			NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
			MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

			TelescopeTitle = { fg = theme.ui.special, bold = true },
			TelescopePromptNormal = { bg = theme.ui.bg_p1 },
			TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
			TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
			TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
			TelescopePreviewNormal = { bg = theme.ui.bg_dim },
			TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
		}
	end,
})

require("catppuccin").setup({
	flavor = "mocha",
	integrations = {
		telescope = true,
		cmp = true,
	},
})

function SetColors(color)
	color = color or "kanagawa-dragon"
	vim.cmd.colorscheme(color)
end

SetColors()
