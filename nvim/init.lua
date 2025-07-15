-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("mason").setup({})
require("mason-lspconfig").setup({
  ensure_installed = {
    "tsserver",
    "eslint",
    "html",
    "cssls",
  },
  handlers = {
    function(server)
      lspconfig[server].setup({
        capabilities = lsp_capabilities,
      })
    end,
    ["tsserver"] = function()
      lspconfig.tsserver.setup({
        capabilities = lsp_capabilities,
        settings = {
          completions = {
            completeFunctionCalls = true,
          },
        },
      })
    end,
  },
})
