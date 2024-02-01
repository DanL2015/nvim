return {
  "andweeb/presence.nvim",
  event = { "BufReadPost" },
  lazy = true,
  config = function()
    require("presence").setup()
  end
}
