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

-- Splitting
vim.keymap.set("n", "<leader>h", ":split<CR>:term<CR>:setlocal nonumber norelativenumber<CR>", opts)
vim.keymap.set("n", "<leader>v", ":vsplit<CR>:term<CR>:setlocal nonumber norelativenumber<CR>", opts)
vim.keymap.set("n", "<leader>sh", ":split<CR>", opts)
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", opts)

-- Comments
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", opts)

-- Paste without yanking
vim.keymap.set("x", "p", "P", opts)

-- Open telescope
vim.keymap.set("n", "<leader>t", ":Telescope<CR>", opts)

-- Tab Switching
vim.api.nvim_set_keymap("n", "<S-Tab>", "<Plug>(cokeline-focus-prev)", { silent = true })
vim.api.nvim_set_keymap("n", "<Tab>", "<Plug>(cokeline-focus-next)", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>p", "<Plug>(cokeline-switch-prev)", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>n", "<Plug>(cokeline-switch-next)", { silent = true })

for i = 1, 9 do
  vim.api.nvim_set_keymap(
    "n",
    ("<F%s>"):format(i),
    ("<Plug>(cokeline-focus-%s)"):format(i),
    { silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    ("<Leader>%s"):format(i),
    ("<Plug>(cokeline-switch-%s)"):format(i),
    { silent = true }
  )
end

-- Format
vim.keymap.set("n", "<leader>fm", function() vim.lsp.buf.format({ async = false }) end, opts)
