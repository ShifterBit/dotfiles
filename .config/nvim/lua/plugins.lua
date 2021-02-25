local cmd = vim.cmd

cmd 'packadd packer.nvim'


------------------------
--------Packages--------
------------------------
return require('packer').startup(function()


  use {'wbthomason/packer.nvim', opt = true}

  ---- Utils ----
  use 'tpope/vim-repeat'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'tpope/vim-obsession'
  use 'tpope/vim-fugitive'
  use 'antoinemadec/FixCursorHold.nvim'
  use 'kyazdani42/nvim-tree.lua'

  ---- Dev ----
  use 'akinsho/nvim-toggleterm.lua'
  use 'rust-lang/rust.vim'

  ---- Completion ----
  use 'hrsh7th/nvim-compe'

  ---- Linting ----
  use 'dense-analysis/ale'

  ---- LSP ----
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/lsp_extensions.nvim'
  use { 'RishabhRD/nvim-lsputils', requires = { 'RishabhRD/popfix' }}

  ---- Syntax ----
  use 'lnl7/vim-nix'
  use 'nvim-treesitter/nvim-treesitter'

  ---- Snippets ----
  use 'cohama/lexima.vim'
  use 'hrsh7th/vim-vsnip'
  use 'norcalli/snippets.nvim'
  use 'hrsh7th/vim-vsnip-integ'
  use 'microsoft/vscode-typescript-next'
  use 'xabikos/vscode-javascript'
  use 'microsoft/vscode-cpptools'
  use 'rust-lang/rls-vscode'
  use 'tht13/Python-vscode'

  ---- Writing ----
  use 'vim-pandoc/vim-pandoc'
  use 'vim-pandoc/vim-pandoc-syntax'
  use 'shime/vim-livedown'
  use 'junegunn/goyo.vim'
  use 'junegunn/limelight.vim'

  ---- Theme ----
  use 'sainnhe/sonokai'
  use 'Th3Whit3Wolf/one-nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'romgrk/barbar.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use {'Th3Whit3Wolf/onebuddy',
        requires = {'tjdevries/colorbuddy.vim'}
      }
  use {
  'glepnir/galaxyline.nvim',
    branch = 'main',
    -- your statusline
    config = function() require'statusline' end,
    -- some optional icons
    requires = {'kyazdani42/nvim-web-devicons'}
}

  ---- Navigation ----
  use {'nvim-telescope/telescope.nvim',
        requires = {'nvim-lua/plenary.nvim','nvim-lua/popup.nvim'}
      }
end)





