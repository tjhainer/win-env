local module = {}

function module.apply(wezterm)
	wezterm.on("update-right-status", function(window, pane)
		window:set_right_status(window:active_workspace())
	end)
end

-- wezterm.on("gui-startup", function(cmd)
-- 	local tab_titles = wezterm.GLOBAL.tab_titles
-- 	tab_titles["T0"] = "Test"
-- 	wezterm.GLOBAL.tab_titles = tab_titles
-- end)

-- wezterm.on("new-tab-button-click", function(window, pane, button, default_action) end)

return module
