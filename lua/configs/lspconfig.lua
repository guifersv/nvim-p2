require("nvchad.configs.lspconfig").defaults()

local servers = { "java", "jdtls" }
vim.lsp.enable(servers)

require("java")

vim.lsp.config("jdtls", {
	cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/jdtls") },
	root_dir = vim.fs.root(0, { "gradlew", ".git", "mvnw" }),
})
-- read :h vim.lsp.config for changing options of lsp servers
