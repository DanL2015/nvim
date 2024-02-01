return {
  "lervag/vimtex",
  ft = {"tex"},
  lazy = true,
  init = function()
    vim.g.vimtex_view_method = "zathura"
    vim.g.tex_conceal='abdmgs'
    vim.o.conceallevel = 1
  end,
}
