---@type LazySpec
return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",

        -- install formatters
        "stylua",

        -- install debuggers
        -- install any other package
        "tree-sitter-cli",
      },
    },
  },
}
