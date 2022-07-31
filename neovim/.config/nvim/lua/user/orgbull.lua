local status_ok, orgbull = pcall(require, "org-bullets")
if not status_ok then
	return
end

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
