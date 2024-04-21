return {
    'neovim/nvim-lspconfig',

    {
        'williamboman/mason.nvim',
        config = function() 
            require('mason').setup()
        end, 
    },

    {
        'williamboman/mason-lspconfig.nvim',
        dependincies = {
            'mason.nvim'
        },
        config = function()
            local conf = require('mason-lspconfig')
            conf.setup()
            conf.setup_handlers({
                function(server_name)
                    require('lspconfig')[server_name].setup({})
                end
            })

        end
    },
}
