return {
  {
    'projekt0n/github-nvim-theme',
    lazy = false,
    priority = 1000,
    config = function()
      require('github-theme').setup({
        options = {
          hide_nc_statusline = false,
          inverse = {
            match_paren = true,
            visual = true,
            search = true,
          },
          darken = {
            sidebars = {
              enabled = true,
            },
          },
        },
      })

      vim.cmd('colorscheme github_dark_default')
    end,
  }
}
