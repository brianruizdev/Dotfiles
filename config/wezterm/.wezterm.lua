-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
-- config.enable_kitty_keyboard = true
config.term = "wezterm"
config.front_end = "OpenGL"
config.max_fps = 144
config.default_cursor_style = "BlinkingUnderline"
config.animation_fps = 1
config.cursor_blink_rate = 500

config.font = wezterm.font("Cascadia Code")
config.prefer_egl = true
config.font_size = 12.0
config.cell_width = 1

config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
-- config.hide_tab_bar_if_only_one_tab = true

config.inactive_pane_hsb = {
	saturation = 0.0,
	brightness = 1.0,
}

config.initial_cols = 80
config.initial_rows = 24
config.window_background_opacity = 0.9
config.win32_system_backdrop = "Disable"
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.integrated_title_button_alignment = "Right"
config.integrated_title_buttons = { 'Hide', 'Maximize', 'Close' }

-- config.window_background_image = "C:/dev/misc/berk.png"
-- config.window_background_image_hsb = {
-- 	brightness = 0.1,
-- }

config.default_prog = { "pwsh", "-NoLogo" }
-- config.default_domain = 'WSL:Debian'

-- For example, changing the color scheme:
config.color_scheme = "Snazzy"
config.colors = {
	background = "#0c0b0f",
	cursor_border = "#00fff7",
	cursor_bg = "#00fff7",
	selection_fg = '#281733',
	tab_bar = {
		background = "#0c0b0f",
		active_tab = {
			bg_color = "#0c0b0f",
			fg_color = "#00e8e1",
			intensity = "Normal",
			underline = "None",
			italic = false,
			strikethrough = false,
		},
		inactive_tab = {
			bg_color = "#0c0b0f",
			fg_color = "#f8f2f5",
			intensity = "Normal",
			underline = "None",
			italic = false,
			strikethrough = false,
		},
		new_tab = {
			bg_color = "#0c0b0f",
			fg_color = "white",
		},
	},
}

-- color scheme toggling
wezterm.on("toggle-colorscheme", function(window, pane)
	local overrides = window:get_config_overrides() or {}
	if overrides.color_scheme == "Snazzy" then
		overrides.color_scheme = "Tokyo Night"
	else
		overrides.color_scheme = "Snazzy"
	end
	window:set_config_overrides(overrides)
end)

-- keymaps
config.keys = {
	{
		-- toggling color scheme
		key = "E",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.EmitEvent("toggle-colorscheme"),
	},
	{
		-- toggling opacity
		key = "O",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action_callback(function(window, _)
			local overrides = window:get_config_overrides() or {}
			if overrides.window_background_opacity == 0.5 then
				overrides.window_background_opacity = 0.9
				overrides.win32_system_backdrop = "Disable"

			else
				overrides.window_background_opacity = 0.5
				overrides.win32_system_backdrop = "Acrylic"
			end
			window:set_config_overrides(overrides)
		end),
	},
	{
		key = "H",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.SplitPane({
			direction = "Right",
			size = { Percent = 50 },
		}),
	},
	{
		key = "V",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.SplitPane({
			direction = "Down",
			size = { Percent = 50 },
		}),
	},
	{
		key = "U",
		mods = "CTRL|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Left", 5 }),
	},
	{
		key = "I",
		mods = "CTRL|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Down", 5 }),
	},
	{
		key = "O",
		mods = "CTRL|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Up", 5 }),
	},
	{
		key = "P",
		mods = "CTRL|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Right", 5 }),
	},
	{ key = "9", mods = "CTRL", action = wezterm.action.PaneSelect },
	{ key = "L", mods = "CTRL", action = wezterm.action.ShowDebugOverlay },
}

-- and finally, return the configuration to wezterm
return config
