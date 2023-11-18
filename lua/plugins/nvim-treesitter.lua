return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
    sync_install = false,
    auto_install = false,

    highlight = {
      enable = true,
      disable = { "latex" },
      additional_vim_regex_highlighting = false,
    },
}
  end,
}
