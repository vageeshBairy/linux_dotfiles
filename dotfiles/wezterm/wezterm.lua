local wezterm = require("wezterm")

local padding = {
	left = "0.1cell",
	right = "0.1cell",
	top = "0.1cell",
	bottom = "0.1cell",
}

-- Reload the configuration every ten minutes
wezterm.time.call_after(600, function()
	wezterm.reload_configuration()
end)

-- A helper function for my fallback fonts
local function font_with_fallback(name, params)
	local names = { name, "JetBrainsMono Nerd Font" }
	return wezterm.font_with_fallback(names, params)
end

return {
	bidi_enabled = true,
	bidi_direction = "AutoLeftToRight",
	color_scheme = "tokyonight_night",
	font = font_with_fallback({
		family = "JetBrainsMono Nerd Font",
	}),
	font_rules = {
		{
			intensity = "Bold",
			font = font_with_fallback({
				family = "JetBrainsMono Nerd Font",
				weight = "Regular",
			}),
		},
	},
	initial_cols = 256,
	initial_rows = 32,
	use_dead_keys = false,
	window_padding = padding,
	window_decorations = "RESIZE",
	hide_tab_bar_if_only_one_tab = true,
	selection_word_boundary = " \t\n{}[]()\"'`,;:@",
	line_height = 1,
	font_size = 10,
	window_background_opacity = 0.90,
	bold_brightens_ansi_colors = false,
	-- swap_backspace_and_delete = false,
	-- term = "wezterm",
	-- freetype_load_target = "Light",
}
