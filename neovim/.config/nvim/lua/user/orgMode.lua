local status_ok, og = pcall(require, "orgmode")
if not status_ok then
	return
end

-- Load custom tree-sitter grammar for org filetype
og.setup_ts_grammar()

og.setup({
	org_agenda_files = { "~/Dropbox/org/*", "~/my-orgs/**/*" },
	org_default_notes_file = "~/Dropbox/org/refile.org",
})
