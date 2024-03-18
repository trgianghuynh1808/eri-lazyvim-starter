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
    "github/copilot.vim",
    cmd = "Copilot",
    build = ":Copilot setup",
    opts = nil,
    lazy = false,
  },
}
