local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.enable_tab_bar = false

config.window_background_opacity = 0.75
config.macos_window_background_blur = 10

config.use_ime = true
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true

config.colors = {
	background = "#1e1e2e",
	foreground = "#cdd6f4",
	cursor_bg = "#cdd6f4",
	cursor_border = "#cdd6f4",
	cursor_fg = "#1e1e2e",
	selection_bg = "#89b4fa",
	selection_fg = "#1e1e2e",

	ansi = { "#45475a", "#f38ba8", "#a6e3a1", "#f9e2af", "#89b4fa", "#f5c2e7", "#94e2d5", "#cdd6f4" },
	brights = { "#585b70", "#f38ba8", "#a6e3a1", "#f9e2af", "#89b4fa", "#f5c2e7", "#94e2d5", "#cdd6f4" },
}

config.window_decorations = "RESIZE"

return config
