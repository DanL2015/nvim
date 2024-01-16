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
      default_hl = {
        fg = function(buffer)
          return
              buffer.is_focused
              and get_hex('ColorColumn', 'bg')
              or get_hex('Normal', 'fg')
        end,
        bg = function(buffer)
          return
              buffer.is_focused
              and get_hex('Normal', 'fg')
              or get_hex('ColorColumn', 'bg')
        end,
      },

      components = {
        {
          text = function(buffer) return (buffer.index ~= 1) and '▏' or '' end,
          fg = function() return get_hex('Normal', 'fg') end
        },
        {
          text = function(buffer) return '    ' .. buffer.devicon.icon end,
          fg = function(buffer) return buffer.devicon.color end,
        },
        {
          text = function(buffer) return buffer.unique_prefix end,
          fg = get_hex('Comment', 'fg'),
          italic = true
        },
        {
          text = function(buffer) return buffer.filename .. '    ' end,
          fg = function(buffer)
            return
                (buffer.diagnostics.errors ~= 0 and get_hex('DiagnosticError', 'fg'))
                or (buffer.diagnostics.warnings ~= 0 and get_hex('DiagnosticWarn', 'fg'))
                or nil
          end,
          underline = function(buffer)
            return buffer.is_hovered and not buffer.is_focused
          end
        },
        {
          text = function(buffer) return buffer.is_modified and '●' or '✕' end,
          fg = function(buffer) return buffer.is_modified and vim.g.terminal_color_2 or nil end,
          on_click = function(_, _, _, _, buffer)
            buffer:delete()
          end
        },
        {
          text = ' ',
        }
      },
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
