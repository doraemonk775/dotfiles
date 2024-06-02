local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'nordfox'
config.font = wezterm.font('UDEV Gothic NFLG', { weight = 'Bold' })
config.font_size = 12
config.initial_cols = 160
config.initial_rows = 48
config.macos_forward_to_ime_modifier_mask = 'SHIFT|CTRL'
config.window_background_opacity = 0.8

return config
