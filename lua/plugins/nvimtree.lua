return {
	'nvim-tree/nvim-tree.lua',
	dependencies = {
		-- Useful for getting pretty icons, but requires a Nerd Font.
		{ 
			'nvim-tree/nvim-web-devicons', 
			enabled = vim.g.have_nerd_font
		},
	},

	config = function()
		require("nvim-tree").setup({
			git = {
				ignore = false,  -- Set to false to show ignored files
			},
			view = {
				side = "right",  -- Set the side to 'right'
			},
		})
		vim.keymap.set('n', '<leader>pt',':NvimTreeFindFileToggle<CR>')
		vim.keymap.set('n', '<leader>pv',':NvimTreeFocus<CR>')

	end

}
