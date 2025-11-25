-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
	"AstroNvim/astrocommunity",
	{ import = "astrocommunity.colorscheme.rose-pine" },
	{ import = "astrocommunity.pack.java" },
	{ import = "astrocommunity.debugging.nvim-dap-view" },
	{ import = "astrocommunity.motion.mini-surround" },
	{ import = "astrocommunity.motion.mini-move" },
	{ import = "astrocommunity.color.mini-hipatterns" },
	{ import = "astrocommunity.editing-support.mini-splitjoin" },
	{ import = "astrocommunity.editing-support.neogen" },
	{ import = "astrocommunity.editing-support.todo-comments-nvim" },
	-- import/override with your plugins folder
}
