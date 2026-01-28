vim.lsp.config("lua_ls", {
	settings = {
		["Lua"] = {
			diagnostics = { globals = { "vim" } },
			completion = { callSnippet = "Replace" },
		},
	},
})

vim.lsp.config("jdtls", {
	settings = {
		java = {
			eclipse = { downloadSources = true },
			configuration = { updateBuildConfiguration = "interactive" },
			maven = { downloadSources = true },
			implementationsCodeLens = { enabled = true },
			referencesCodeLens = { enabled = true },
			inlayHints = { parameterNames = { enabled = "all" } },
			contentProvider = { preferred = "fernflower" },
			signatureHelp = { enabled = true, description = { enabled = true } },
			completion = {
				favoriteStaticMembers = {
					"org.hamcrest.MatcherAssert.assertThat",
					"org.hamcrest.Matchers.*",
					"org.hamcrest.CoreMatchers.*",
					"org.junit.jupiter.api.Assertions.*",
					"java.util.Objects.requireNonNull",
					"java.util.Objects.requireNonNullElse",
					"org.mockito.Mockito.*",
				},
			},
			sources = {
				organizeImports = {
					starThreshold = 9999,
					staticStarThreshold = 9999,
				},
			},
		},
	},
})

vim.diagnostic.config({
	severity_sort = true,
	float = { border = "rounded" },
	virtual_text = { spacing = 2, source = "if_many" },
	underline = true,
})
