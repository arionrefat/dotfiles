local status_ok, notify = pcall(require, "notify")
if not status_ok then
	return
end

vim.notify = require("notify")

notify.setup({
	stages = "fade_in_slide_out",
	-- Render function for notifications. See notify-render()
	render = "default",
	-- Minimum width for notification windows
	minimum_width = 15,
	-- Icons for the different levels
	icons = {
		ERROR = "",
		WARN = "",
		INFO = "",
		DEBUG = "",
		TRACE = "✎",
	},
})

local log = require("plenary.log").new({
	plugin = "notify",
	level = "debug",
	use_console = false,
})

vim.notify = function(msg, level, opts)
	log.info(msg, level, opts)
	require("notify")(msg, level, opts)
end

function GetIcon(path)
	local filename = vim.fn.fnamemodify(path, ":t")
	local extension = vim.fn.fnamemodify(path, ":e")
	return require("nvim-web-devicons").get_icon(filename, extension, { default = true })
end

vim.cmd(
	[[ autocmd BufWritePost * lua vim.notify((function() return "Saved >> " .. GetIcon("~/" .. vim.fn.expand("%")) .. " " .. vim.fn.expand("%:t") end)()) ]]
)
