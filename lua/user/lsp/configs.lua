local status_ok, mason = pcall(require, "mason")
if not status_ok then
	return
end

local masonlspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")
local servers = {"lua_ls","jsonls"}

mason.setup()
masonlspconfig.setup {
	ensure_installed = servers,
  automatic_installation = true,
}

for _, server in pairs(servers) do
	local opts = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	}
	local has_custom_opts, server_custom_opts = pcall(require, "user.lsp.settings." .. server)
	if has_custom_opts then
	 	opts = vim.tbl_deep_extend("force", server_custom_opts, opts)
	end
	lspconfig[server].setup(opts)
end
