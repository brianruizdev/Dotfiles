-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.enable_kitty_keyboard = true
config.font = wezterm.font("Cascadia Code")
config.color_scheme = "Snazzy" -- "Tokyo Night"
config.window_background_opacity = 0.7
config.win32_system_backdrop = "Acrylic"
config.front_end = "WebGpu"
config.max_fps = 60

-- Windows exclusive configs
config.default_prog = { "pwsh", "-NoLogo" }
-- config.default_domain = 'WSL:Debian'
-- config.default_domain = 'WSL:kali-linux'
-- config.default_domain = 'WSL:Ubuntu-18.04'

-- and finally, return the configuration to wezterm
return config