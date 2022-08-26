local wezterm = require("wezterm")
local act = wezterm.action

local catppuccin = require("colors/catppuccin").setup({
	sync = true,
	-- available flavours: "latte" | "frappe" | "macchiato" | "mocha"
	sync_flavours = {
		dark = "macchiato",
	},
})

local function font_with_fallback(name, params)
	local names = { name, "FiraCode Nerd Font", "Hack Nerd Font" }
	return wezterm.font_with_fallback(names, params)
end

local font_name = "CaskaydiaCove Nerd Font"

-- The filled in variant of the < symbol
local SOLID_LEFT_ARROW = utf8.char(0xe0b2)

-- The filled in variant of the > symbol
local SOLID_RIGHT_ARROW = utf8.char(0xe0b0)

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
		bottom = 8,
	},

	window_close_confirmation = "NeverPrompt",
	adjust_window_size_when_changing_font_size = false,

	warn_about_missing_glyphs = true,

	window_background_opacity = 1.0,

	keys = {
		{ key = "{", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Left") },
		{ key = "}", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Right") },
		{
			key = "%",
			mods = "CTRL|SHIFT",
			action = act.SplitPane({
				direction = "Right",
			}),
		},
	},

	enable_tab_bar = true,
	tab_bar_at_bottom = true,
	hide_tab_bar_if_only_one_tab = true,
	tab_max_width = 16,
	tab_bar_style = {
		active_tab_left = wezterm.format({
			{ Background = { Color = "#0b0022" } },
			{ Foreground = { Color = "#2b2042" } },
			{ Text = SOLID_LEFT_ARROW },
		}),
		active_tab_right = wezterm.format({
			{ Background = { Color = "#0b0022" } },
			{ Foreground = { Color = "#2b2042" } },
			{ Text = SOLID_RIGHT_ARROW },
		}),
		inactive_tab_left = wezterm.format({
			{ Background = { Color = "#0b0022" } },
			{ Foreground = { Color = "#1b1032" } },
			{ Text = SOLID_LEFT_ARROW },
		}),
		inactive_tab_right = wezterm.format({
			{ Background = { Color = "#0b0022" } },
			{ Foreground = { Color = "#1b1032" } },
			{ Text = SOLID_RIGHT_ARROW },
		}),
	},
	default_cursor_style = "BlinkingBar",
	selection_word_boundary = " \t\n{}[]()\"'`,;:",
}
