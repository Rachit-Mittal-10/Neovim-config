return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>nt", ":Neotree toggle<CR>", { desc = "Neotree Filesystem", silent = true })
		vim.keymap.set("n", "<leader>nf", ":Neotree focus<CR>", { desc = "Neotree focus", silent = true })
        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,
                    hide_gitignore = false,
                    hide_by_name = {
                        ".",
                        "..",
                        ".git"
                    }
                }
            }
        })
	end
}
