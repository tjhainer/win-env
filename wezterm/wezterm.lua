local wezterm = require("wezterm")
local helpers = require("helpers")
local events = require("events")
local config = wezterm.config_builder()

helpers.apply_to_config(wezterm, config)

return config
