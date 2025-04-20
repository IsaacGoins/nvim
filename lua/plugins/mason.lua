return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = { "stylua", "markdownlink", "black", "isort", "clang-format" },
  },
  config = function()
    require("mason").setup()
    vim.diagnostic.config({
      virtual_text = true,
    })
  end,
}
