-- NOTE: (https://docs.astronvim.com/recipes/disable_winbar/)
return {
  "rebelot/heirline.nvim",
  opts = function(_, opts) opts.winbar = nil end,
}
