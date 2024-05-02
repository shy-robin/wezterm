-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'

config.font_size = 12
config.font = wezterm.font('Hack Nerd Font Regular', { weight = 'Regular' })
config.color_scheme = 'Catppuccin Mocha'

config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
-- 隐藏操作按钮
-- config.window_decorations = "RESIZE"
config.show_new_tab_button_in_tab_bar = false
config.window_background_opacity = 0.9
config.macos_window_background_blur = 70
config.text_background_opacity = 0.9
config.adjust_window_size_when_changing_font_size = false
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0
}

-- 默认启动使用 WSL
config.default_domain = 'WSL:Ubuntu'

-- and finally, return the configuration to wezterm
return config
