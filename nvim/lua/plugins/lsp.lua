return {
  -- tools
  {
    "mason-org/mason-lspconfig.nvim",
    version = "1.32.0",
  },
  {
    "mason-org/mason.nvim",
    version = "1.11.0",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "selene",
        "luacheck",
        "shellcheck",
        "shfmt",
        "typescript-language-server",
        "css-lsp",
        "tailwindcss-language-server",
        "vue-language-server",
      })
    end,
  },

  {
    "nvim-lspconfig",
    keys = {
      { "<leader>ce", "<cmd>EslintFixAll<cr>", desc = "ESLint Fix All" },
    },
    opts = {
      setup = {
        volar = function()
          require("lazyvim.util").lsp.on_attach(function(client, _)
            if client.name == "volar" then
              client.server_capabilities.documentFormattingProvider = false
            end
          end)
        end,
      },
    },
  },
}
