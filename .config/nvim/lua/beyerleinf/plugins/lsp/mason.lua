return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"tsserver",
				"html",
				"tailwindcss",
				"gopls",
				"cssls",
				-- "csharp_ls",
				"jsonls",
				"lua_ls",
				"typst_lsp",
				"yamlls",
				"emmet_ls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"eslint_d",
				"stylua",
				"gopls",
				"goimports",
				"gofumpt",
				"golangci-lint",
				"angularls",
			},
		})
	end,
}