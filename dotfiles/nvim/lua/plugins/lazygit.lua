return {
	"kdheepak/lazygit.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local keymap = vim.keymap.set
		keymap("n", "<leader>gg", ":LazyGit<CR>", { silent = true ,desc = "open lazygit"})
	end,
}
