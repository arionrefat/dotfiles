return {
  -- wakatime
  { "wakatime/vim-wakatime", lazy = false },
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
}
