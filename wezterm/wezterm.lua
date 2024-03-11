local wezterm = require("wezterm")
local config = wezterm.config_builder()
config.window_frame = {
	font = wezterm.font("FiraCode Nerd Font Mono"),
	font_size = 13.5,
}

config.enable_tab_bar = false
config.color_scheme = "kanagawabones"
config.font = wezterm.font("FiraCode Nerd Font Mono")
config.font_size = 15.5
config.window_padding = {
	left = 20,
	right = 20,
	top = 20,
	bottom = 20,
}
config.initial_cols = 140
config.initial_rows = 40
config.term = "xterm-256color"
config.scrollback_lines = 10000
config.window_decorations = "RESIZE"

config.keys = {
	{ key = "d", mods = "CTRL|SHIFT", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },
}

return config
