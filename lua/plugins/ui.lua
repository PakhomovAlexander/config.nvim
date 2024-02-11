return ({
	{
	'navarasu/onedark.nvim',
	priority = 1000,
	config = function() 
        	require('onedark').setup {
	    		style = 'warmer'
        	}
		vim.cmd.colorscheme 'onedark'
	end,
	}, 

  	{ 
    	'nvim-lualine/lualine.nvim',
    	opts = {
      		options = {
        		icons_enabled = true,
        		theme = 'onedark',
        		component_separators = '|',
        		section_separators = '',
      			}
    		}
  	},

	-- {
	-- this looks wierd without formatting
	-- TODO: enable when setup formattiong
    	-- 'lukas-reineke/indent-blankline.nvim',
    	-- main = 'ibl',
    	-- opts = {},
  	-- },
	
	
	

})
