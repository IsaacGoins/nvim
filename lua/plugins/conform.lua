return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      -- merge/override defaults
      opts.default_format_opts = vim.tbl_deep_extend("force", opts.default_format_opts or {}, {
        timeout_ms = 3000,
        async = false,
        quiet = false,
        lsp_format = "fallback",
      })

      opts.formatters_by_ft = vim.tbl_deep_extend("force", opts.formatters_by_ft or {}, {
        lua = { "stylua" },
        fish = { "fish_indent" },
        sh = { "shfmt" },
        python = { "black" },
        xml = { "xmlformatter" },
      })

      opts.formatters = vim.tbl_deep_extend("force", opts.formatters or {}, {
        injected = { options = { ignore_errors = true } },
        -- shfmt = { prepend_args = { "-i", "2", "-ci" } },
      })

      return opts
    end,
  },
}
