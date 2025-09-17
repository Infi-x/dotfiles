
local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Vacuous 2 (terminal.sexy)"

config.window_background_opacity = 0.9
config.macos_window_background_blur = 10

return config
