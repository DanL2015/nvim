return {
  "mfussenegger/nvim-lint",
  lazy = true,
  events = { "BufWritePost", "BufReadPost", "InsertLeave" },
  config = function()
    require("lint").linters_by_ft = {
      markdown = { "markdownlint" },
      python = { "pylint" },
    }
    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      callback = function()
        require("lint").try_lint()
      end,
    })
  end,
}
