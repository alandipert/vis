-- load standard vis module, providing parts of the Lua API
require('vis')

vis.events.subscribe(vis.events.INIT, function()
	-- Your global configuration options
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	-- Your per window configuration options e.g.
	-- vis:command('set number')
end)

vis:command_register("only", function(argv, force, cur_win, selection, range)
	for win in vis:windows() do
		if win ~= cur_win then
			win:close(force)
		end
	end
end)
