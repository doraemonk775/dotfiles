local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'carbonfox'
config.font = wezterm.font('UDEV Gothic 35NFLG')
config.font_size = 12
config.hide_tab_bar_if_only_one_tab = true
config.initial_cols = 200
config.initial_rows = 60
config.macos_forward_to_ime_modifier_mask = 'SHIFT|CTRL'
config.tab_bar_at_bottom = true
config.window_background_opacity = 0.8

return config
