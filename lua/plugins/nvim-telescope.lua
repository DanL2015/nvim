return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  config = function()
    require("telescope").setup {}
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>th", builtin.colorscheme, {})

    vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
    vim.keymap.set("n", "<leader>gf", builtin.git_files, {})

    vim.keymap.set("n", "<leader>lb", builtin.buffers, {})
  end
}

