return {
	{
    "mfussenegger/nvim-dap",
    dependencies = { "leoluz/nvim-dap-go", opts = {} },
		config = function()
			local function get_codelldb()
				local mason_registry = require "mason-registry"
				local codelldb = mason_registry.get_package "codelldb"
				local extension_path = codelldb:get_install_path() .. "/extension/"
				local codelldb_path = extension_path .. "adapter/codelldb"
				local liblldb_path = extension_path .. "lldb/lib/liblldb.so"
				return codelldb_path, liblldb_path
			end

			local codelldb_path, _ = get_codelldb()
			local dap = require "dap"
			dap.adapters.codelldb = {
				type = "server",
				port = "${port}",
				executable = {
					command = codelldb_path,
					args = { "--port", "${port}" },
				},
			}
			dap.configurations.rust = {
				{
					name = "Rust debug",
					type = "codelldb",
					request = "launch",
					program = function()
						return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/target/debug/', 'file')
					end,
					cwd = '${workspaceFolder}',
					stopOnEntry = true,
					showDisassembly = "never"
				}
			}

			dap.configurations.cpp = {
				{
					name = "C debug",
					type = "codelldb",
					request = "launch",
					program = function()
						return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
					end,
					cwd = '${workspaceFolder}',
					stopOnEntry = true,
				}
			}

			dap.configurations.c = dap.configurations.cpp
		end
  },
	{
		"rcarriga/nvim-dap-ui",
		requires = {
			"mfussenegger/nvim-dap"
		}
	},
	{
		"theHamsta/nvim-dap-virtual-text",
	}
}
