return {
  "zbirenbaum/copilot.lua",
  opts = {
    suggestion = {
      enabled = not vim.g.ai_cmp,
      auto_trigger = true,
    },
    panel = { enabled = true },
  },
  keys = {
    -- toggle copilot
    { "<leader>ue", "<cmd>Copilot disable<cr>", desc = "Disable Copilot" },
    { "<leader>uE", "<cmd>Copilot disable<cr>", desc = "Enable Copilot" },
  },
}
