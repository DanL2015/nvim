return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  lazy = true,
  cmd = "Telescope",
  config = function()
    require("telescope").setup {}
  end
}

