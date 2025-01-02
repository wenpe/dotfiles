-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'AdventureTime'
config.audible_bell = "Disabled"
config.automatically_reload_config = true
config.scrollback_lines = 10000
config.use_ime = true
config.color_scheme = "Dracula+"
config.font_size = 13.0
config.adjust_window_size_when_changing_font_size = true

-- キーバインド
config.keys = {
  -- ⌘ + でフォントサイズを大きくする
  {
      key = "+",
      mods = "CMD|SHIFT",
      action = wezterm.action.IncreaseFontSize,
  },

}

-- and finally, return the configuration to wezterm
return config
