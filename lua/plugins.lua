require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("lewis6991/impatient.nvim")
	use({ "catppuccin/nvim", as = "catppuccin" })
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("nvim-treesitter/playground")
	use("tjdevries/colorbuddy.vim")
	use("j-hui/fidget.nvim")
	use("simrat39/rust-tools.nvim")
	use("nvim-lua/plenary.nvim")
	use("mfussenegger/nvim-dap")
	use("akinsho/toggleterm.nvim") -- Completion framework:
	use("hrsh7th/nvim-cmp")
	-- LSP completion source:
	use("hrsh7th/cmp-nvim-lsp")
	-- Useful completion sources:
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-nvim-lsp-signature-help")
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/cmp-path")
	--use("hrsh7th/cmp-buffer")
	use("hrsh7th/vim-vsnip")
	use("puremourning/vimspector")
	use({
		"phaazon/hop.nvim",
		branch = "v2", -- optional but strongly recommended
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require("hop").setup({
				keys = "etovxqpdygfblzhckisuran",
				quit_key = "<SPC>",
			})
		end,
	})

	use("lukas-reineke/indent-blankline.nvim")
	use 'wakatime/vim-wakatime'
	use {
		'saecki/crates.nvim',
		tag = 'v0.3.0',
		requires = { 'nvim-lua/plenary.nvim' },
		config = function()
			require('crates').setup()
		end,
	}
	use("windwp/nvim-ts-autotag")
	use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
		'nvim-tree/nvim-web-devicons', -- optional
	  },
	  config = function()
		require("nvim-tree").setup {}
	  end
	}
	use("ionide/Ionide-vim")
end)
