return require'packer'.startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'lewis6991/impatient.nvim',
        config = function()
            require'impatient'
        end
    }

    use {
        'navarasu/onedark.nvim',
        config = function()
            require'onedark'.setup {transparent = true}
            require'onedark'.load()
            vim.cmd [[hi StatusLine guibg=none]]
        end
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = [[require'telescope'.setup()]],
        cmd = 'Telescope'
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        config = function()
            require'nvim-treesitter.configs'.setup {
                highlight = {enable = true}
            }
        end
    }

    use { 'phaazon/hop.nvim', config = [[require'hop'.setup()]] }

    use 'b3nj5m1n/kommentary'
end)
