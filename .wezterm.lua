-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Liquid Carbon Transparent (Gogh)"
config.initial_cols = 110
config.initial_rows = 20
config.font = wezterm.font("BerkeleyMono Nerd Font Mono")
config.use_fancy_tab_bar = true

config.window_background_opacity = 0.55
config.macos_window_background_blur = 20
-- and finally, return the configuration to wezterm
return config
