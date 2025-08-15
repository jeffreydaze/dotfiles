-- Pull in the wezterm API
local wezterm = require 'wezterm'
local constants = require "constants"
--local keys = require("keys")
local config = wezterm.config_builder()
local launch_menu = {}
-- Powershell configuration
config.default_prog =
	{"pwsh", "-NoLogo" }

-- Launch Menu
table.insert(launch_menu, {
	label = "Powershell Core",
	args = { "pwsh", "-NoLogo" },
})
table.insert(launch_menu, {
	label = "Powershell Preview",
	args = { "pwsh-preview", "-NoLogo" },
})
table.insert(launch_menu, {
	label = "Windows Powershell",
	args = { "powershell", "-NoLogo" },
})
table.insert(launch_menu, {
	label = "Powershell Core No Profile",
	args = { "pwsh", "-NoLogo" , "-NoProfile" },
})
table.insert(launch_menu, { label = "Powershell Preview No Profile",
	args = { "pwsh-preview", "-NoLogo" , "-NoProfile" },
})
table.insert(launch_menu, {
	label = "Windows Powershell No Profile",
	args = { "powershell", "-NoLogo" , "-NoProfile" },
})
table.insert(launch_menu, {
	label = "Windows Command Prompt",
	args = { "cmd", "-NoLogo" },
})
config.launch_menu = launch_menu

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- Appearance Window Configuration
config.window_padding = { 
	left = 0, 
	right = 0, 
	top = 0, 
	bottom = 0 
}
config.integrated_title_button_alignment = "Right"
config.integrated_title_button_style = "Windows"
config.integrated_title_buttons = { "Hide", "Maximize", "Close" }
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.tab_and_split_indices_are_zero_based = true
--local dimmer = { brightness = 0.5 }
config.window_background_image = constants.bg_image
config.window_background_opacity = 1
config.window_background_image_hsb = { brightness = 0.2, }

-- Appearance Settings i.e. ColorTheme and Fonts 
config.font_size = 14
config.line_height = 1.2
config.color_scheme = 'tokyonight_night'
config.font = wezterm.font ('JetBrainsMono Nerd Font')
config.colors = {
	cursor_bg = "white",
	cursor_border = "white",
}
-- Keybinds
-- Mapping Leader
config.leader = { key = 'a', mods = 'CTRL' }
--keys.setup(config)

-- Wezterm Module for Tabline and installation
-- local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")

-- Misc
config.prefer_egl = true

-- Finally, return the configuration to wezterm:
return config
