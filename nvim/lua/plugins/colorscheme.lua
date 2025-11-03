return {
  {
    -- "folke/tokyonight.nvim",
    -- "haishanh/night-owl.vim",
    -- "EdenEast/nightfox.nvim",
    "rebelot/kanagawa.nvim",
    --  "projekt0n/github-nvim-theme",
    -- name = "github-theme",
    -- lazy = false, -- make sure we load this during startup if it is your main colorscheme
    -- priority = 1000, -- make sure to load this before all the other start plugins
    -- config = function()
    --   require("github-theme").setup({
    --     -- ...
    --   })
    --
    --   vim.cmd("colorscheme github_dark")
    -- end,
  },
  {
    {
      "LazyVim/LazyVim",
      opts = {
        -- tokyonight's schema
        -- colorscheme = "tokyonight-night",

        -- night-owl's schema
        -- colorscheme = "night-owl",

        -- nightfox's schema
        -- colorscheme = "nightfox",
        -- colorscheme = "terafox",

        -- kanagawa's schema
        colorscheme = "kanagawa-dragon",

        -- github's schema
        -- colorscheme = "github_dark_default",
        -- colorscheme = "github_dark_colorblind",
      },
    },
  },
}
