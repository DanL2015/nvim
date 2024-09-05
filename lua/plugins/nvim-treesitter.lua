return {
  "nvim-treesitter/nvim-treesitter",
  cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
  lazy = true,
  config = function()
    require 'nvim-treesitter.configs'.setup {
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "html", "bash", "c", "cpp", "css", "java", "javascript", "json", "python", "typescript" },
      sync_install = false,
      auto_install = false,

      highlight = {
        enable = true,
        disable = { "latex" },
        additional_vim_regex_highlighting = false,
      },
      autotag = {
        enable = true,
        filetypes = { "html", "xml", "javascriptreact", "typescriptreact" },
      },
    }
  end,
}
