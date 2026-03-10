return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Load this before everything else
    lazy = false, -- Load on startup
    config = function()
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
