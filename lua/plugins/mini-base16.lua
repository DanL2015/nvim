return {
  "echasnovski/mini.base16",
  config = function()
    require("mini.base16").setup({
      palette = {
        base00 = '#1d1f21',
        base01 = '#1d1f21',
        base02 = '#fba922',
        base03 = '#969896',
        base04 = '#1d1f21',
        base05 = '#c5c8c6',
        base06 = '#3971ed',
        base07 = '#a36ac7',
        base08 = '#c5c8c6',
        base09 = '#198844',
        base0A = '#fba922',
        base0B = '#fba922',
        base0C = '#cc342b',
        base0D = '#ffffff',
        base0E = '#3971ed',
        base0F = '#fba922',
      },
      plugins = { default = true },
    })
  end
}
