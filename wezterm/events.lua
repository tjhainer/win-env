local wezterm = require("wezterm")
local mux = wezterm.mux
local config = {}

wezterm.on("gui-startup", function(cmd)
	local tab_titles = wezterm.GLOBAL.tab_titles
	tab_titles["T0"] = "Test"
	wezterm.GLOBAL.tab_titles = tab_titles
end)

wezterm.on("new-tab-button-click", function(window, pane, button, default_action) end)

return config
