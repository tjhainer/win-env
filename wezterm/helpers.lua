local keybinds = require("keybinds")
local module = {}
function module.apply_to_config(wezterm, config)
	config.default_prog = { "pwsh.exe" }
	config.font = wezterm.font("Fira Code Retina")
	config.harfbuzz_features = { "ss05", "ss03", "ss08", "ss02", "cv20", "ss04", "cv16" }
	config.color_scheme = "Dracula (Official)" --Grape --Duotone Dark --Dracula Official -- "BlulocoDark" -- "Andromeda"
	config.window_background_opacity = 0.99
	config.hide_tab_bar_if_only_one_tab = true
	keybinds.apply_to_config(wezterm, config)
end
return module
