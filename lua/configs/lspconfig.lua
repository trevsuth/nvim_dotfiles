-- lua/config/lspconfig.lua
local M = {}

local on_attach = function(client, bufnr)
  -- Keymaps, etc.
  local opts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
-- For example, if using nvim-cmp:
-- local cmp_nvim_lsp = require("cmp_nvim_lsp")
-- local capabilities = cmp_nvim_lsp.default_capabilities()

function M.setup()
  local lspconfig = require "lspconfig"

  local servers = {
    "html",
    "cssls",
    "pyright",
    -- add more as needed
  }

  for _, server in ipairs(servers) do
    lspconfig[server].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end
end

return M
