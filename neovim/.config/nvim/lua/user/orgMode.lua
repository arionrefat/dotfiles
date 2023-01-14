local status_ok, og = pcall(require, "orgmode")
if not status_ok then
	return
end

local status_oky, orgbull = pcall(require, "org-bullets")
if not status_oky then
	return
end

-- Load custom tree-sitter grammar for org filetype
og.setup_ts_grammar()

og.setup({
	org_agenda_files = { "~/Workspaces/Org-mode/**/*" },
	org_default_notes_file = "~/Workspaces/Org-mode/Todo.org",
})

orgbull.setup({
	concealcursor = true, -- If false then when the cursor is on a line underlying characters are visible
	symbols = {
		-- headlines can be a list
		headlines = { "◉", "○", "✸", "✿" },
		checkboxes = {
			cancelled = { "", "OrgCancelled" },
			done = { "✓", "OrgDone" },
			todo = { "˟", "OrgTODO" },
		},
	},
})
