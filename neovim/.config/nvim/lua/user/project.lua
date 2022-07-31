local status_ok, project = pcall(require, "project_nvim")
if not status_ok then
	return
end

project.setup({
	{
		manual_mode = false,
		-- Show hidden files in telescope
		show_hidden = false,
		-- When set to false, you will get a message when project.nvim changes your
		-- directory.
		silent_chdir = true,
	},
})
