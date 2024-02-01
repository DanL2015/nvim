return {
  "iurimateus/luasnip-latex-snippets.nvim",
  requires = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
  ft = {"tex", "markdown"},
  lazy = true,
  config = function()
    require'luasnip-latex-snippets'.setup()
    require("luasnip").config.setup { enable_autosnippets = true }
  end,
}
