return {
  -- Incremental rename
  {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    config = true,
  },

  -- comment tools
  {
    "numToStr/Comment.nvim",
    opts = {
      -- add any options here
    },
    lazy = false,
  },

  -- github copilot
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      suggestion = { enabled = true },
      panel = { enabled = true, layout = { position = "top" } },
      filetypes = {
        markdown = true,
        help = true,
      },
    },
  },

  -- auto save
  {
    "Pocco81/auto-save.nvim",
    otps = { trigger_events = { "InsertLeave" }, debounce_delay = 300 },
    lazy = false,
  },
}
