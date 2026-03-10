return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "basic", -- Change from "all" or "strict" to "basic"
              },
            },
          },
        },
      },
    },
  },
}
