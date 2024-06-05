local wezterm = require("wezterm")
local config = wezterm.config_builder()

return {
	enable_wayland = true,
	-- Set font and size
	font = wezterm.font("Iosevka NF"),
	font_size = 13.0,

	color_scheme = "Catppuccin Mocha",
	window_padding = {
		left = 10,
		right = 10,
		top = 10,
		bottom = 10,
	},

	hide_tab_bar_if_only_one_tab = true,

	enable_scroll_bar = true,
	scrollback_lines = 5000,

	initial_rows = 30,
	initial_cols = 100,

	window_frame = {
		button_fg = "#cdd6f4",
		button_bg = "#1e1e2e",
		button_hover_bg = "#313244",
		active_titlebar_bg = "#1e1e2e",
		inactive_titlebar_bg = "#1e1e2e",
		inactive_titlebar_fg = "#cdd6f4",
	},

	-- Customize tab bar colors
	colors = {
		tab_bar = {
			background = "#1e1e2e",

			active_tab = {
				bg_color = "#11111b",
				fg_color = "#cdd6f4",
			},

			inactive_tab = {
				bg_color = "#1e1e2e", -- Background color of inactive tabs
				fg_color = "#cdd6f4", -- Foreground color of inactive tabs
			},

			inactive_tab_hover = {
				bg_color = "#11111b", -- Background color of inactive tabs when hovered
				fg_color = "#cdd6f4", -- Foreground color of inactive tabs when hovered
			},

			new_tab = {
				bg_color = "#11111b", -- Background color of the new tab button
				fg_color = "#cdd6f4", -- Foreground color of the new tab button
			},

			new_tab_hover = {
				bg_color = "#11111b", -- Background color of the new tab button when hovered
				fg_color = "#cdd6f4", -- Foreground color of the new tab button when hovered
			},
		},
	},

	keys = {
		{ key = "c", mods = "ALT", action = wezterm.action({ CopyTo = "Clipboard" }) },
		{ key = "v", mods = "ALT", action = wezterm.action({ PasteFrom = "Clipboard" }) },
		{ key = "t", mods = "ALT", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
		{ key = "w", mods = "ALT", action = wezterm.action({ CloseCurrentTab = { confirm = true } }) },
		{ key = "1", mods = "ALT", action = wezterm.action({ ActivateTab = 0 }) },
		{ key = "2", mods = "ALT", action = wezterm.action({ ActivateTab = 1 }) },
		{ key = "3", mods = "ALT", action = wezterm.action({ ActivateTab = 2 }) },
		{ key = "4", mods = "ALT", action = wezterm.action({ ActivateTab = 3 }) },
		{ key = "5", mods = "ALT", action = wezterm.action({ ActivateTab = 4 }) },
		{ key = "6", mods = "ALT", action = wezterm.action({ ActivateTab = 5 }) },
		{ key = "7", mods = "ALT", action = wezterm.action({ ActivateTab = 6 }) },
		{ key = "8", mods = "ALT", action = wezterm.action({ ActivateTab = 7 }) },
		{ key = "9", mods = "ALT", action = wezterm.action({ ActivateTab = 8 }) },
	},
}
