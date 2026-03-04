return {
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<leader>e",
        function()
          -- get all running explorer pickers
          local pickers = require("snacks").picker.get({ source = "explorer" })
          if #pickers > 0 then
            -- if there are multiple, just focus the first one
            pickers[1]:focus()
          else
            -- otherwise open a new explorer
            require("snacks").explorer({
              -- optional: start at project root instead of cwd
              -- dir = require("lazyvim.util").root(),
            })
          end
        end,
        desc = "Explorer: focus (or open) Snacks Explorer",
      },
    },
  },
}
