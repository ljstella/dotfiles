-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Liquid Carbon Transparent (Gogh)"
config.initial_cols = 168
config.initial_rows = 36
config.font = wezterm.font(
    "BerkeleyMono Nerd Font Mono Plus Font Awesome Plus Font Awesome Extension Plus Octicons Plus Power Symbols Plus Codicons Plus Pomicons Plus Font Logos Plus Material Design Icons Plus Weather Icons"
)

config.use_fancy_tab_bar = true
-- and finally, return the configuration to wezterm
return config
