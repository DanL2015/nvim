return {
  "jbyuki/nabla.nvim",
  lazy = false,
  config = function()
    require "nabla".enable_virt({
      autogen = true, -- auto-regenerate ASCII art when exiting insert mode
      silent = true, -- silents error messages
    })
  end
}
