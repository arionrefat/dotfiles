local wezterm = require("wezterm")
local act = wezterm.action

local catppuccin = require("colors/catppuccin").setup({
	sync = true,
	-- available flavours: "latte" | "frappe" | "macchiato" | "mocha"
	sync_flavours = {
		dark = "mocha",
	},
})

local function font_with_fallback(name, params)
	local names = { name, "FiraCode Nerd Font", "Hack Nerd Font" }
	return wezterm.font_with_fallback(names, params)
end

local font_name = "Iosevka SS08"

return {
	colors = catppuccin,
	front_end = "OpenGL",
	font = font_with_fallback(font_name),

	font_size = 16,
	font_shaper = "Harfbuzz",

	window_padding = {
		left = 15,
		right = 15,
		top = 15,
		bottom = 10,
	},

	window_close_confirmation = "NeverPrompt",
	adjust_window_size_when_changing_font_size = false,

	warn_about_missing_glyphs = true,

	window_background_opacity = 1.0,

	keys = {
		{ key = "{", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Left") },
		{ key = "}", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Right") },
	},

	enable_tab_bar = false,
	default_cursor_style = "BlinkingBar",
	selection_word_boundary = " \t\n{}[]()\"'`,;:",
}
