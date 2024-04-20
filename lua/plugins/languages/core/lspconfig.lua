return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"b0o/schemastore.nvim",
		"hrsh7th/cmp-nvim-lsp",
	},
	event = "VeryLazy",
	config = function()
		local lspconfig = require "lspconfig"
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		lspconfig.lua_ls.setup {
			capabilities = capabilities,

			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = {
							[vim.fn.expand "$VIMRUNTIME/lua"] = true,
							[vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
							[vim.fn.stdpath "data" .. "/lazy/ui/nvchad_types"] = true,
							[vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy"] = true,
						},
						maxPreload = 100000,
						preloadFileSize = 10000,
					},
				},
			},
		}

		lspconfig.nil_ls.setup {
			capabilities = capabilities,
		}

		lspconfig.typst_lsp.setup {
			capabilities = capabilities,
		}

		lspconfig.clangd.setup {
			capabilities = capabilities,
		}

		lspconfig.pylsp.setup {
			capabilities = capabilities,
		}

		lspconfig.volar.setup {
			capabilities = capabilities,
		}

		lspconfig.tsserver.setup {
			capabilities = capabilities,
			init_options = {
				plugins = {
					{
						name = "@vue/typescript-plugin",
						location = "/home/polnio/.nvm/versions/node/v21.6.1/lib/node_modules/@vue/typescript-plugin",
						languages = { "javascript", "typescript", "vue" },
					},
				},
			},
			filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx", "vue" },
		}

		lspconfig.svelte.setup {
			capabilities = capabilities,
		}

		lspconfig.astro.setup {
			capabilities = capabilities,
		}

		lspconfig.cssls.setup {
			capabilities = capabilities,
		}

		lspconfig.html.setup {
			capabilities = capabilities,
		}

		lspconfig.emmet_ls.setup {
			capabilities = capabilities,
		}

		lspconfig.biome.setup {
			capabilities = capabilities,
			root_dir = lspconfig.util.root_pattern "biome.json",
		}

		lspconfig.jsonls.setup {
			capabilities = capabilities,
			settings = {
				json = {
					schemas = require("schemastore").json.schemas(),
					validate = { enable = true },
				},
			},
		}

		lspconfig.dartls.setup {
			capabilities = capabilities,
		}

		lspconfig.rust_analyzer.setup {
			capabilities = capabilities,
			settings = {
				["rust-analyzer"] = {
					cargo = {
						allFeatures = true,
					},
				},
			},
		}
	end,
	keys = {
		{ "[d", vim.diagnostic.goto_prev, desc = "Go to previous diagnostic" },
		{ "]d", vim.diagnostic.goto_next, desc = "Go to next diagnostic" },

		--[[ { "gd", vim.lsp.buf.definition, desc = "Go to definition" },
    { "gi", vim.lsp.buf.implementation, desc = "Go to implementation" },
    { "gt", vim.lsp.buf.type_definition, desc = "Go to type definition" },
    { "gr", vim.lsp.buf.references, desc = "Go to references" }, ]]

		{
			"gd",
			function()
				require("telescope.builtin").lsp_definitions()
			end,
		},
		{
			"gi",
			function()
				require("telescope.builtin").lsp_implementations()
			end,
		},
		{
			"gt",
			function()
				require("telescope.builtin").lsp_type_definitions()
			end,
		},
		{
			"gr",
			function()
				require("telescope.builtin").lsp_references()
			end,
		},

		{ "K",          vim.lsp.buf.hover,         desc = "Hover" },

		{ "<leader>ld", vim.diagnostic.open_float, desc = "Show diagnostic" },
		{
			"<leader>lD",
			function()
				require("telescope.builtin").diagnostics()
			end,
			desc = "Open diagnostics list",
		},
		{ "<leader>la", vim.lsp.buf.code_action, mode = { "n", "v" },   desc = "Code Actions" },
		{ "<leader>lr", vim.lsp.buf.rename,      desc = "Rename Symbol" },
	},
}
