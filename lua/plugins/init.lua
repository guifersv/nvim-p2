return {
  {
    "kkoomen/vim-doge",
  },
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "jdtls",
        "java-debug-adapter",
        "google-java-format",
      },
    },
  },
}
