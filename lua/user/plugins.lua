local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
-- vim.cmd [[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerSync
--   augroup end
-- ]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  vim.notify("plugins.lua: unable to get packer!")
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
-- All of the plugins are stored in 
-- C:\Users\13018\AppData\Local\nvim-data\site\pack\packer\start
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "nvim-telescope/telescope.nvim" -- Fuzzy finder
  use "folke/tokyonight.nvim" -- Colorscheme
  use "overcache/NeoSolarized"
 
  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"  
  use "maxmellon/vim-jsx-pretty"  -- For nice indentation and jsx syntax highlighting
  -- use { "neoclide/coc.nvim", branch = "release" }
  
  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use
  
  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  
  -- From my original vimrc
  -- Plug 'morhetz/gruvbox'
  -- Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  -- Plug 'dracula/vim', { 'as': 'dracula' }
  -- Plug 'vim-scripts/Windows-PowerShell-Syntax-Plugin' "For PowerShell .ps1 file syntax highlighting. Because we need this for some reason and it won't automatically color the syntax
  -- Plug 'nvim-lua/plenary.nvim'
  -- Plug 'nvim-telescope/telescope.nvim'
  -- Plug 'neoclide/coc.nvim', {'branch': 'release'}
  --
  --
  --
  -- use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use "numToStr/Comment.nvim" -- Easily comment stuff
 -- use "kyazdani42/nvim-web-devicons"
 -- use "kyazdani42/nvim-tree.lua"
 -- use "akinsho/bufferline.nvim"
 -- use "moll/vim-bbye"
 -- use "nvim-lualine/lualine.nvim"
 -- use "akinsho/toggleterm.nvim"
 -- use "ahmedkhalf/project.nvim"
 -- use "lewis6991/impatient.nvim"
 -- use "lukas-reineke/indent-blankline.nvim"
 -- use "goolord/alpha-nvim"
 -- use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight
 -- use "folke/which-key.nvim"


  -- Treesitter
 -- use {
 --   "nvim-treesitter/nvim-treesitter",
 --   run = ":TSUpdate",
 -- }
 -- use "JoosepAlviste/nvim-ts-context-commentstring"

  -- Git
  use "lewis6991/gitsigns.nvim"
  
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
