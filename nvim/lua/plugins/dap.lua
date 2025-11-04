return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "jay-babu/mason-nvim-dap.nvim",
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
    },
    keys = function()
      local dap = require("dap")
      local dapui = require("dapui")
      return {
        { "<leader>dt", dap.toggle_breakpoint, desc = "Toggle Breakpoint" },
        { "<leader>dc", dap.continue, desc = "Continue" },
        { "<leader>dr", dap.repl.open, desc = "Inspect" },
        { "<leader>dk", dap.terminate, desc = "Kill" },
        { "<leader>dso", dap.step_over, desc = "Step Over" },
        { "<leader>dsi", dap.step_into, desc = "Step Into" },
        { "<leader>dsu", dap.step_out, desc = "Step Out" },
        { "<leader>dl", dap.run_last, desc = "Run Last" },
        { "<leader>duu", dapui.open, desc = "Open UI" },
        { "<leader>duc", dapui.close, desc = "Close UI" },
      }
    end,
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      require("mason-nvim-dap").setup({
        ensure_installed = { "js" },
        automatic_installation = true,
        handlers = {},
      })

      dapui.setup({
        layouts = {
          {
            elements = {
              { id = "breakpoints", size = 0.20 },
              { id = "scopes", size = 0.30 },
              { id = "repl", size = 0.50 },
            },
            size = 50,
            position = "left",
          },
          {
            elements = {
              { id = "console", size = 1.0 },
            },
            size = 10,
            position = "bottom",
          },
        },
      })

      -- Automatically open/close DAP UI
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end

      -- JavaScript/TypeScript configurations
      for _, language in ipairs({ "typescript", "javascript" }) do
        dap.configurations[language] = {
          {
            type = "pwa-node",
            request = "launch",
            name = "Launch Current File",
            program = "${file}",
            cwd = "${workspaceFolder}",
          },
          {
            type = "pwa-node",
            request = "launch",
            name = "Launch via npm",
            runtimeExecutable = "npm",
            runtimeArgs = { "run", "dev" },
            rootPath = "${workspaceFolder}",
            cwd = "${workspaceFolder}",
            console = "integratedTerminal",
            internalConsoleOptions = "neverOpen",
          },
          {
            type = "pwa-node",
            request = "attach",
            name = "Attach to Process",
            processId = require("dap.utils").pick_process,
            cwd = "${workspaceFolder}",
          },
        }
      end

      -- Register node-terminal as an alias after Mason setup completes
      vim.defer_fn(function()
        if dap.adapters["pwa-node"] then
          dap.adapters["node-terminal"] = dap.adapters["pwa-node"]
        end
      end, 1000)
    end,
  },
}
