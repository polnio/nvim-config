return {
	"jmbuhr/otter.nvim",
	event = "InsertEnter",
	init = function()
		local otter = require "otter"
		otter.activate({ 'c' }, true, true, nil)
	end
}
