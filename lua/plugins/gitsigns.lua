return {
  "lewis6991/gitsigns.nvim",
  event = "User FilePost",
  lazy = true,
  config = function()
    require("gitsigns").setup({
      signs = {
        add          = { text = '│' },
        change       = { text = '│' },
        delete       = { text = '_' },
        topdelete    = { text = '‾' },
        changedelete = { text = '~' },
        untracked    = { text = '│' },
      }
    })
  end
}
