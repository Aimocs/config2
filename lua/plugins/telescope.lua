return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim', 
      -- Useful for getting pretty icons, but requires a Nerd Font.
      { 
	      'nvim-tree/nvim-web-devicons', 
	      enabled = vim.g.have_nerd_font
      },
    },
    config= function()

	    require('telescope').setup{
		    defaults = {
			    prompt_prefix = "  ", 
			    selection_caret = "  ",
		    },

	    }
	    local builtin = require('telescope.builtin')
	    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
	    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
	    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
	    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
	    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    end,
}
