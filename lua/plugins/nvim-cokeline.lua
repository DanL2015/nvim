return {
  "willothy/nvim-cokeline",
  dependencies = {
    "nvim-lua/plenary.nvim",        -- Required for v0.4.0+
    "kyazdani42/nvim-web-devicons", -- If you want devicons
    "stevearc/resession.nvim"       -- Optional, for persistent history
  },
  config = function()
    local get_hex = require('cokeline.hlgroups').get_hl_attr
    require("cokeline").setup({
      sidebar = {
        filetype = { "NvimTree" },
        components = {
          {
            text = function(buf)
              return buf.filetype
            end,
            fg = vim.g.terminal_color_2,
            bg = get_hex("Normal", "bg"),
            bold = true,
          }
        }
      }
    })
  end
}
