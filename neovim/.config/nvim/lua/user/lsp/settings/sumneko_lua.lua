return {
	settings = {
		Lua = {
			runtime = {
				version = "Lua 5.4",
			},
			diagnostics = {
				enable = true,
				globals = { "vim" },
			},
			telemetry = { enable = false },
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
}
