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

-- Key bind
config.keys = {
  { key = "+", mods = "CMD|SHIFT", action = wezterm.action.IncreaseFontSize, },
  { key = 'UpArrow', mods = 'SHIFT', action = wezterm.action.ScrollByLine(-1) },
  { key = 'DownArrow', mods = 'SHIFT', action = wezterm.action.ScrollByLine(1) },
  { key = 'UpArrow', mods = 'CTRL|SHIFT', action = wezterm.action.ScrollByPage(-1) },
  { key = 'DownArrow', mods = 'CTRL|SHIFT', action = wezterm.action.ScrollByPage(1) },
  { key = '-', mods = 'ALT', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  { key = '¥', mods = 'ALT', action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },
  { key = "x", mods = "ALT", action = wezterm.action.CloseCurrentPane{ confirm = true } },
  -- Alt + LeftArrow を Ctrl + Alt + B として送信
  {key="LeftArrow", mods="ALT", action=wezterm.action{SendKey={key="b", mods="ALT|CTRL"}}},
  -- Alt + RightArrow を Ctrl + Alt + F として送信
  {key="RightArrow", mods="ALT", action=wezterm.action{SendKey={key="f", mods="ALT|CTRL"}}},
}

-- and finally, return the configuration to wezterm
return config
