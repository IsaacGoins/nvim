return {
  "marcinjahn/gemini-cli.nvim",
  cmd = "Gemini",
  -- Example key mappings for common actions:
  keys = {
    { "<leader>GG", "<cmd>Gemini toggle<cr>", desc = "Toggle Gemini CLI" },
    { "<leader>Ga", "<cmd>Gemini ask<cr>", desc = "Ask Gemini", mode = { "n", "v" } },
    { "<leader>Gf", "<cmd>Gemini add_file<cr>", desc = "Add File" },
  },
  dependencies = {
    "folke/snacks.nvim",
  },
  config = true,
}
