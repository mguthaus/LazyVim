return {
  "saghen/blink.nvim",
  enabled = true,
  dependencies = {
    "zbirenbaum/copilot.lua",
  },
  opts = {
    sources = {
      default = { "copilot", "lsp", "path", "snippets", "buffer" },
    },
    completion = {
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 200,
      },
      list = {
        selection = {
          preselect = false,
          auto_insert = false,
        },
      },
    },
  },
  init = function()
    -- force override <CR> and <C-y> after blink loads
    vim.api.nvim_create_autocmd("User", {
      pattern = "BlinkCmpLoaded",
      callback = function()
        local blink_cmp = require("blink.cmp")
        local km = require("blink.cmp.keymap")

        km.set("i", "<CR>", function(fallback)
          fallback()
        end)

        km.set("i", "<C-y>", function()
          if blink_cmp.visible() and blink_cmp.get_selected_entry() then
            blink_cmp.confirm()
          end
        end)
      end,
    })
  end,
}
