vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- colorschemes
  use('kvrohit/rasmus.nvim')
  use('rmehri01/onenord.nvim')
  use('EdenEast/nightfox.nvim')
  use('AlexvZyl/nordic.nvim')
  use('lewpoly/sherbet.nvim')

  -- status line
  use('nvim-lualine/lualine.nvim')
  use('smolck/command-completion.nvim')

  -- useful plugins
  use('nvim-tree/nvim-tree.lua')

  use('jalvesaq/Nvim-R')

    use('github/copilot.vim')

  -- nvim-dap
    use('mfussenegger/nvim-dap')
    use('mfussenegger/nvim-dap-python')
    use('theHamsta/nvim-dap-virtual-text')
    use('rcarriga/nvim-dap-ui')
    use('ldelossa/nvim-dap-projects')

    use('gelguy/wilder.nvim')

    use('folke/neodev.nvim')

--   use {
--        "m4xshen/hardtime.nvim",
--        requires = { 'MunifTanjim/nui.nvim', "nvim-lua/plenary.nvim" }
--   }
--
    use {
      "ray-x/lsp_signature.nvim",
    }

  use {
      'nvim-telescope/telescope.nvim', tag='0.1.4',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use(
      'nvim-treesitter/nvim-treesitter',
      {run = ':TSUpdate'}
  )
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use('karb94/neoscroll.nvim')

  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},             -- Required
          {                                      -- Optional
          'williamboman/mason.nvim',
          run = function()
              pcall(vim.api.nvim_command, 'MasonUpdate')
          end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
  }
  }

end)
