return {
	"catppuccin/nvim",
	enabled = true,
	name = "catppuccin",
	priority = 1000,
	opts = {
		custom_highlights = function(colors)
			return {
				TelescopeNormal = {
					bg = colors.mantle,
					fg = colors.text,
				},
				TelescopeBorder = {
					bg = colors.mantle,
					fg = colors.mantle,
				},
				TelescopePromptNormal = {
					bg = colors.surface0,
				},
				TelescopePromptBorder = {
					bg = colors.surface0,
					fg = colors.surface0,
				},
				TelescopePromptTitle = {
					bg = colors.surface0,
					fg = colors.surface0,
				},
				TelescopePreviewTitle = {
					bg = colors.mantle,
					fg = colors.mantle,
				},
				TelescopeResultsTitle = {
					bg = colors.mantle,
					fg = colors.mantle,
				},
			}
		end,
	},
	init = function()
		vim.cmd.colorscheme "catppuccin-mocha"
	end
}
