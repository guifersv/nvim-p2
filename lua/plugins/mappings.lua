-- NOTE: (https://docs.astronvim.com/recipes/mappings/)

return {
	{
		"AstroNvim/astrocore",
		---@type AstroCoreOpts
		opts = {
			mappings = {
				-- first key is the mode
				n = {
					-- second key is the lefthand side of the map
					-- mappings seen under group name "Buffer"
					["<leader>T"] = { name = "Java Test" },

					["<leader>Tm"] = {
						function()
							require("jdtls").test_nearest_method()
						end,
						desc = "Run nearest test",
					},

					["<leader>Tc"] = {
						function()
							require("jdtls").test_class()
						end,
						desc = "Run test class",
					},

					-- ["<Leader>bD"] = {
					--   function()
					--     require("astroui.status").heirline.buffer_picker(function(bufnr)
					--       require("astrocore.buffer").close(bufnr)
					--     end)
					--   end,
					--   desc = "Pick to close",
					-- },
					t = {
						-- setting a mapping to false will disable it
						-- ["<esc>"] = false,
					},
				},
			},
		},
		-- {
		--   "AstroNvim/astrolsp",
		--   ---@type AstroLSPOpts
		--   opts = {
		--     mappings = {
		--       n = {
		--         -- this mapping will only be set in buffers with an LSP attached
		--         K = {
		--           function()
		--             vim.lsp.buf.hover()
		--           end,
		--           desc = "Hover symbol details",
		--         },
		--         -- condition for only server with declaration capabilities
		--         gD = {
		--           function()
		--             vim.lsp.buf.declaration()
		--           end,
		--           desc = "Declaration of current symbol",
		--           cond = "textDocument/declaration",
		--         },
		--       },
		--     },
		--   },
	},
}
