return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    mason.setup({})
    mason_lspconfig.setup({
      ensure_installed = { "lua_ls" },
      max_concurrent_installers = 10,
      automatic_installation = true,
    })

    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local opts = { noremap = true, silent = true }
    local on_attach = function(client, bufnr)
      opts.buffer = bufnr
    end
    local capabilities = cmp_nvim_lsp.default_capabilities()

    local servers = { "html", "tsserver", "emmet_ls", "clangd", "cssls", "rust_analyzer", "texlab", "marksman" }
    for _, k in ipairs(servers) do
      lspconfig[k].setup {
        on_attach = on_attach,
        capabilities = capabilities,
      }
    end

    lspconfig.lua_ls.setup {
      on_attach = on_attach,
      capabilities = capabilities,

      settings = {
        Lua = {
          completion = {
            callSnippet = "Replace"
          },
          diagnostics = {
            globals = { "vim", "awesome", "client", "screen", "mouse", "tag" },
          },
        },
      }
    }
  end,
}
