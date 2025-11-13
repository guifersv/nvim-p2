return {
  {
    "puremourning/vimspector",
  },
  { "kkoomen/vim-doge" },
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "google-java-format",
      },
      registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
      },
    },
  },
  {
    "neoclide/coc.nvim",
    branch = "release",
    ft = { "java" }, -- load only for Java filetypes
  },
}
