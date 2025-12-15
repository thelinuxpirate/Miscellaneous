local api = vim.api
local lsp = vim.lsp

api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = lsp.get_client_by_id(args.data.client_id)
    client.server_capabilities.semanticTokensProvider = nil
  end,
});
