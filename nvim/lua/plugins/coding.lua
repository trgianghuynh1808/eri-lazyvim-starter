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

  -- visual multi
  {
    "mg979/vim-visual-multi",
  },

  -- github copilot
  {
    "github/copilot.vim",
    cmd = "Copilot",
    build = ":Copilot setup",
    opts = nil,
    lazy = false,
  },

  -- visual multi
  {
    "mg979/vim-visual-multi",
  },

  -- lazygit
  {
    "kdheepak/lazygit.nvim",
    lazy = false,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("telescope").load_extension("lazygit")
    end,
  },

  --  plugin prevent bad habit
  {
    "m4xshen/hardtime.nvim",
    lazy = false,
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {},
  },

  -- animation for cursor
  {
    "sphamba/smear-cursor.nvim",
    opts = {},
  },

  -- toggle relative number
  {
    "sitiom/nvim-numbertoggle",
    opts = {},
  },
}
