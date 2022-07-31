local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

null_ls.setup({
	debug = false,
	sources = {
		formatting.prettier.with({
			extra_args = { "--single-quote", "--jsx-single-quote", "--tab-width=2", "--trailing-comma <none>" },
			filetypes = {
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
				"css",
				"scss",
				"less",
				"html",
				"yaml",
				"markdown",
			},
		}),
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.stylua,
		formatting.gofmt,
		formatting.goimports,
        code_actions.eslint,
        -- diagnostics.eslint,
        -- formatting.eslint,
		-- diagnostics.pylint,
		diagnostics.vulture,
	},
})
