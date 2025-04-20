return {
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "yamlls", "clangd", "bashls", "cssls", "html", "jsonls", "ltex", "marksman", "matlab_ls", "sqlls", "taplo", "verible", "pylyzer", "arduino_language_server", "bashls", "ts_ls", "glsl_analyzer", "rust_analyzer"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilites = capabilities
      })
      lspconfig.yamlls.setup({
        capabilites = capabilities
      })
      lspconfig.clangd.setup({
        capabilites = capabilities
      })
      lspconfig.bashls.setup({
        capabilites = capabilities
      })
      lspconfig.cssls.setup({
        capabilites = capabilities
      })
      lspconfig.html.setup({
        capabilites = capabilities
      })
      lspconfig.jsonls.setup({
        capabilites = capabilities
      })
      lspconfig.ltex.setup({
        capabilites = capabilities
      })
      lspconfig.marksman.setup({
        capabilites = capabilities
      })
      lspconfig.matlab_ls.setup({
        capabilites = capabilities
      })
      lspconfig.sqlls.setup({
        capabilites = capabilities
      })
      lspconfig.taplo.setup({
        capabilites = capabilities
      })
      lspconfig.pylyzer.setup({
        capabilites = capabilities
      })
      lspconfig.arduino_language_server.setup({
        capabilites = capabilities
      })
      lspconfig.ts_ls.setup({
        capabilites = capabilities
      })
      lspconfig.glsl_analyzer.setup({
        capabilites = capabilities
      })
      lspconfig.rust_analyzer.setup({
        capabilites = capabilities
      })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})

      -- Verilog LSP
      vim.api.nvim_create_autocmd('FileType', {
        -- This handler will fire when the buffer's 'filetype' is "python"
        pattern = {'verilog', 'systemverilog'},
        callback = function()
          vim.lsp.start({
            name = 'verible',
            cmd = {'verible-verilog-ls', '--rules_config_search'},
          })
        end,
      })

      vim.api.nvim_create_autocmd("BufWritePost", {
        pattern = "*.v",
        callback = function()
          vim.lsp.buf.format({ async = false })
        end
      })
    end
  }
}
