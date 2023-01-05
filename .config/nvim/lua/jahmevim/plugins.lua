local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Vibes
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use 'rebelot/kanagawa.nvim'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  -- Fuzzy Finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig' -- Config for neovims built-in LSP
  use {'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim'} -- Mason: LSP, DAP, lint, etc. package manager

  -- Autocompletion
  use 'hrsh7th/nvim-cmp' -- Autocompletion Engine
  use 'hrsh7th/cmp-nvim-lsp' -- Source for built-in LSP
  use 'hrsh7th/cmp-buffer' -- Source for buffers
  use 'hrsh7th/cmp-path' -- Source for files in path
  use 'saadparwaiz1/cmp_luasnip' -- Source for LuaSnip
  use 'windwp/nvim-autopairs' -- Autopair symbols

  -- Snippets
  use 'L3MON4D3/LuaSnip' -- Code snippets


end)
