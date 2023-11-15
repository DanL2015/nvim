local opts = {
  noremap = true,
  silent = true
}

-- Leader key
vim.g.mapleader = " "

-- Window navigation with Ctrl + {h, j, k, l}
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Window resize with Ctrl + arrow keys
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Open telescope
vim.keymap.set("n", "<leader>t", ":Telescope<CR>", opts)

-- Format
vim.keymap.set("n", "<leader>fm", ":lua vim.lsp.buf.format({ async = false})<CR>", opts)
