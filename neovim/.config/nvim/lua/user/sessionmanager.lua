local status_ok, sm = pcall(require, "auto-session")
if not status_ok then
	return
end

sm.setup({
	log_level = "info",
	auto_session_enable_last_session = false,
	auto_session_enabled = false,
	auto_save_enabled = false,
	auto_restore_enabled = nil,
	auto_session_use_git_branch = true,
})

require("session-lens").setup({
	path_display = { "shorten" },
	prompt_title = "Saved Sessions"
})
