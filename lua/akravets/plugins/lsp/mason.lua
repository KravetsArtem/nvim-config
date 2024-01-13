return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
	-- opts = function(_, opts)
	-- 	vim.list_extend(
	-- 		opts.ensure_installed,
	-- 		{ "delve", "gotests", "golangci-lint", "gofumpt", "goimports", "golangci-lint-langserver", "impl", "gomodifytags", "iferr", "gotestsum" }
	-- 	)
	-- end,
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
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
      -- list of servers for mason to install
      ensure_installed = {
        "tsserver",
        "html",
        "cssls",
        "tailwindcss",
        "lua_ls",
        "emmet_ls",
        "prismals",
        "pyright",
				-- golang
				"gopls", "golangci_lint_ls",
				-- ruby
				"ruby_ls",
				--Rust
				"rust_analyzer",
				--Java
				"jdtls",
      },
      -- auto-install configured servers (with lspconfig)
      automatic_installation = true, -- not the same as ensure_installed
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        "isort", -- python formatter
        "black", -- python formatter
        "pylint", -- python linter
        "eslint_d", -- js linter
				"codelldb", -- rust debugger
				-- golang tools
				"gotests", "golangci-lint", "gotestsum", "iferr", "gomodifytags", "impl","goimports","delve", "gofumpt",
				-- java tools
				"google-java-format",
      },
    })
  end,
}
