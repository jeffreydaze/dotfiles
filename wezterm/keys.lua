local wezterm = require 'wezterm'
local act = wezterm.action
local M = {}

--Rename Tab
{
	key = ',',
	mods = 'LEADER'
	action = act.PromptInputLine {
		description = 'Name for Tab.',
		action = wezterm.action_callback(
			function(window, pane, line)
				if line then
					window:activetab():set_title(line)
				end
			end
		),
	},
},
-- Vertical Split
{
	key = '|',
	mods = 'LEADER|SHIFT',
	action = act.SplitPane {
		direction = 'Right'
		size = { Percent = 50 },
	},
}{
	key = ',',
	mods = 'LEADER'
	action = act.PromptInputLine {
		description = 'Name for Tab.',
		action = wezterm.action_callback(
			function(window, pane, line)
				if line then
					window:activetab():set_title(line)
				end
			end
		),
	},
},
-- Vertical Split
{
	key = '|',
	mods = 'LEADER|SHIFT',
	action = act.SplitPane {
		direction = 'Right'
		size = { Percent = 50 },
	},
},
-- Horizontal Split
{
	key = "-",
	mods = 'LEADER',
	action = act.SplitPane {
		direction = 'Down',
		size = { Percent = 50 },
	},
}

return M 
