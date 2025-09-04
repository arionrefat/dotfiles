return {
  -- wakatime
  {
    "wakatime/vim-wakatime",
  },
  {
    "s1n7ax/nvim-window-picker",
    name = "window-picker",
    event = "VeryLazy",
    version = "2.*",
    config = function()
      require("window-picker").setup()
    end,
  },
  {
    "gbprod/cutlass.nvim",
    config = function()
      require("cutlass").setup({
        exclude = { "ns", "nS" },
        cut_key = "m",
      })
    end,
  },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      notifier = {
        enabled = false,
        timeout = 3000,
      },
      scroll = { enabled = false },
    },
  },
}
