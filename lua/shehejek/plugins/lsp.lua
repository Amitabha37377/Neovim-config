return {
	'VonHeikemen/lsp-zero.nvim',
	lazy = false,
	branch = 'v1.x',
	dependencies = {
		-- LSP Support
		{ 'neovim/nvim-lspconfig' },           -- Required
		{ 'williamboman/mason.nvim' },         -- Optional
		{ 'williamboman/mason-lspconfig.nvim' }, -- Optional
		{ 'onsails/lspkind.nvim' },

		-- Autocompletion
		{ 'hrsh7th/nvim-cmp' },       -- Required
		{ 'hrsh7th/cmp-nvim-lsp' },   -- Required
		{ 'hrsh7th/cmp-buffer' },     -- Optional
		{ 'hrsh7th/cmp-path' },       -- Optional
		{ 'saadparwaiz1/cmp_luasnip' }, -- Optional
		{ 'hrsh7th/cmp-nvim-lua' },   -- Optional

		-- Snippets
		{ 'L3MON4D3/LuaSnip' },           -- Required
		{ 'rafamadriz/friendly-snippets' }, -- Optional
	},
	events = { "BufReadPre", "BufNewFile" },

	--config = function()
	--	local lsp = require("lsp-zero")
	--	lsp.preset("recommended")
	--	lsp.ensure_installed({})
	--	lsp.nvim_workspace()

	--	local kind_icons = {
	--		Text = "",
	--		Method = "󰆧",
	--		Function = "󰊕",
	--		Constructor = "",
	--		Field = "󰇽",
	--		Variable = "󰂡",
	--		Class = "󰠱",
	--		Interface = "",
	--		Module = "",
	--		Property = "󰜢",
	--		Unit = "",
	--		Value = "󰎠",
	--		Enum = "",
	--		Keyword = "󰌋",
	--		Snippet = "",
	--		Color = "󰏘",
	--		File = "󰈙",
	--		Reference = "",
	--		Folder = "󰉋",
	--		EnumMember = "",
	--		Constant = "󰏿",
	--		Struct = "",
	--		Event = "",
	--		Operator = "󰆕",
	--		TypeParameter = "󰅲",
	--	}

	--	local cmp = require('cmp')
	--	local cmp_action = require('lsp-zero').cmp_action()
	--	local lspkind = require('lspkind')

	--	--cmp setups
	--	cmp.setup({

	--		window = {
	--			completion = cmp.config.window.bordered({
	--				border = "double",
	--				col_offset = -3,
	--			}),
	--		},

	--		mapping = {
	--			['<CR>'] = cmp.mapping.confirm({ select = false }),
	--			['<C-Space>'] = cmp.mapping.complete(),
	--			['<C-f>'] = cmp_action.luasnip_jump_forward(),
	--			['<C-b>'] = cmp_action.luasnip_jump_backward(),
	--		},

	--		formatting = {
	--			fields = { "kind", "abbr", "menu" },
	--			format = lspkind.cmp_format({
	--				mode = 'symbol_text', -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
	--				maxwidth = 50,   -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
	--				menu = ({        -- showing type in menu
	--					nvim_lsp = "[LSP]",
	--					path = "[Path]",
	--					buffer = "[Buffer]",
	--					luasnip = "[LuaSnip]",
	--				}),
	--				before = function(entry, vim_item) -- for tailwind css autocomplete
	--					if vim_item.kind == 'Color' and entry.completion_item.documentation then
	--						local _, _, r, g, b = string.find(entry.completion_item.documentation, '^rgb%((%d+), (%d+), (%d+)')
	--						if r then
	--							local color = string.format('%02x', r) .. string.format('%02x', g) .. string.format('%02x', b)
	--							local group = 'Tw_' .. color
	--							if vim.fn.hlID(group) < 1 then
	--								vim.api.nvim_set_hl(0, group, { fg = '#' .. color })
	--							end
	--							vim_item.kind = "■" -- or "⬤" or anything
	--							vim_item.kind_hl_group = group
	--							return vim_item
	--						end
	--					end
	--					-- vim_item.kind = icons[vim_item.kind] and (icons[vim_item.kind] .. vim_item.kind) or vim_item.kind
	--					-- or just show the icon
	--					vim_item.kind = lspkind.symbolic(vim_item.kind) and lspkind.symbolic(vim_item.kind) or vim_item.kind
	--					return vim_item
	--				end
	--			})
	--		},

	--		-- sources = cmp.config.sources {
	--		-- 	{ name = "nvim_lsp", priority = 1000 },
	--		-- 	{ name = "luasnip",  priority = 750 },
	--		-- 	{ name = "buffer",   priority = 500 },
	--		-- 	{ name = "path",     priority = 250 },
	--		-- },

	--		-- snippet = {
	--		-- 	expand = function(args)
	--		-- 		require('luasnip').lsp_expand(args.body)
	--		-- 	end,
	--		-- },

	--	})

	--	lsp.set_preferences({
	--		suggest_lsp_servers = false,
	--		sign_icons = {
	--			error = '',
	--			warn = '',
	--			hint = '󰰂',
	--			info = ''
	--		}
	--	})

	--	lsp.setup()

	--	vim.diagnostic.config({
	--		virtual_text = true
	--	})

	--	vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	--		vim.lsp.diagnostic.on_publish_diagnostics, {
	--			update_in_insert = true,
	--		}
	--	)

	--	--Autoformatting on save
	--	vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
	--end
}
