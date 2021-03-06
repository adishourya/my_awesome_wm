local filesystem = require('gears.filesystem')

local config_dir = filesystem.get_configuration_dir()
local bin_dir = config_dir .. 'binaries/'

return {

	-- The default applications that we will use in keybindings and widgets
	default = {
		-- terminal 										= 'tabbed alacritty --embed',																-- Terminal Emulator
		-- terminal 										= 'alacritty',																-- Terminal Emulator
		terminal 										= 'tilix',																-- Terminal Emulator
		text_editor 									= 'subl3',                      	            						-- GUI Text Editor
		web_browser 									= 'qutebrowser',                        	        						-- Web browser
		file_manager 									= 'nemo',                            	  	 	 					-- GUI File manager
		network_manager 								= 'nm-connection-editor',												-- Network manager
		bluetooth_manager 								= 'blueman-manager',													-- Bluetooth manager
		power_manager 									= 'xfce4-power-manager',												-- Power manager
		package_manager 								= 'pamac-manager',														-- GUI Package manager
		lock 											= 'awesome-client "awesome.emit_signal(\'module::lockscreen_show\')"',	-- Lockscreen
		quake 											= 'alacritty --name QuakeTerminal',       			    					-- Quake-like Terminal

		rofiglobal										= 'rofi -dpi ' .. screen.primary.dpi ..
															' -show "Global Search" -modi "Global Search":' .. config_dir ..
															'/configuration/rofi/sidebar/rofi-spotlight.sh' ..
															' -theme ' .. config_dir ..
															'/configuration/rofi/sidebar/rofi.rasi',			 				-- Rofi Web Search


		rofiappmenu 									= 'rofi -dpi ' .. screen.primary.dpi ..
															' -show drun -theme ' .. config_dir ..
															'/configuration/rofi/appmenu/rofi.rasi'					  			-- Application Menu

		-- You can add more default applications here
	},

	-- List of apps to start once on start-up
	-- auto-start.lua module will start these

	run_on_start_up = {

		-- 'sleep 3 && ~/.local/bin/animated_picom',
		'sleep 3 && picom --experimental-backends -b',
        'mpd',                                                          	          										    -- Music Server
		'xfce4-power-manager'
		-- You can add more start-up applications here
	},

	-- List of binaries/shell scripts that will execute a certain task

	bins = {
		full_screenshot = bin_dir .. 'snap full',              					                    							-- Full Screenshot
		area_screenshot = bin_dir .. 'snap area',			                                        							-- Area Selected Screenshot
		update_profile  = bin_dir .. 'profile-image'																			-- Update profile picture
	}
}
