return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.diagnostics.rubocop,
				null_ls.builtins.formatting.rubocop,
			--	null_ls.builtins.diagnostics.biome,
				null_ls.builtins.formatting.biome,
				null_ls.builtins.formatting.isort,
			},
		})

		local keymap = vim.keymap

		keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}



