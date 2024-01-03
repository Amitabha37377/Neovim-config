--return {
--	'VonHeikemen/lsp-zero.nvim',
--	lazy = false,
--	branch = 'v1.x',
--	dependencies = {
--		-- LSP Support
--		{ 'neovim/nvim-lspconfig' },           -- Required
--		{ 'williamboman/mason.nvim' },         -- Optional
--		{ 'williamboman/mason-lspconfig.nvim' }, -- Optional
--		{ 'onsails/lspkind.nvim' },

--		-- Autocompletion
--		{ 'hrsh7th/nvim-cmp' },       -- Required
--		{ 'hrsh7th/cmp-nvim-lsp' },   -- Required
--		{ 'hrsh7th/cmp-buffer' },     -- Optional
--		{ 'hrsh7th/cmp-path' },       -- Optional
--		{ 'saadparwaiz1/cmp_luasnip' }, -- Optional
--		{ 'hrsh7th/cmp-nvim-lua' },   -- Optional

--		-- Snippets
--		{ 'L3MON4D3/LuaSnip' },           -- Required
--		{ 'rafamadriz/friendly-snippets' }, -- Optional
--	},
--	events = { "BufReadPre", "BufNewFile" },

--	config = function()
--		local lsp = require("lsp-zero")
--		lsp.preset("recommended")
--		lsp.ensure_installed({})
--		lsp.nvim_workspace()

--		local kind_icons = {
--			Text = "",
--			Method = "󰆧",
--			Function = "󰊕",
--			Constructor = "",
--			Field = "󰇽",
--			Variable = "󰂡",
--			Class = "󰠱",
--			Interface = "",
--			Module = "",
--			Property = "󰜢",
--			Unit = "",
--			Value = "󰎠",
--			Enum = "",
--			Keyword = "󰌋",
--			Snippet = "",
--			Color = "󰏘",
--			File = "󰈙",
--			Reference = "",
--			Folder = "󰉋",
--			EnumMember = "",
--			Constant = "󰏿",
--			Struct = "",
--			Event = "",
--			Operator = "󰆕",
--			TypeParameter = "󰅲",
--		}

--		local cmp = require('cmp')
--		local cmp_action = require('lsp-zero').cmp_action()
--		local lspkind = require('lspkind')

--		--cmp setups
--		cmp.setup({

--			formatting = {
--				format = function(entry, vim_item)
--					vim_item.kind = lspkind.presets.default[vim_item.kind]
--					vim_item.menu = ({
--						nvim_lsp = "[LSP]",
--						look = "[Dict]",
--						buffer = "[Buffer]",
--					})[entry.source.name]

--					return vim_item
--				end,
--			},


--			window = {
--				completion = cmp.config.window.bordered({
--					border = "double",
--				}),
--			},

--			mapping = {
--				['<CR>'] = cmp.mapping.confirm({ select = false }),
--				['<C-Space>'] = cmp.mapping.complete(),
--				['<C-f>'] = cmp_action.luasnip_jump_forward(),
--				['<C-b>'] = cmp_action.luasnip_jump_backward(),
--			},
--			sources = cmp.config.sources {
--				{ name = "nvim_lsp", priority = 1000 },
--				{ name = "luasnip",  priority = 750 },
--				{ name = "buffer",   priority = 500 },
--				{ name = "path",     priority = 250 },
--			},

--			snippet = {
--				expand = function(args)
--					require('luasnip').lsp_expand(args.body)
--				end,
--			},

--		})

--		lsp.set_preferences({
--			suggest_lsp_servers = false,
--			sign_icons = {
--				error = '',
--				warn = '',
--				hint = '󰰂',
--				info = ''
--			}
--		})

--		lsp.setup()

--		vim.diagnostic.config({
--			virtual_text = true
--		})

--		vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--			vim.lsp.diagnostic.on_publish_diagnostics, {
--				update_in_insert = true,
--			}
--		)

--		--Autoformatting on save
--		vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
--	end
--}
