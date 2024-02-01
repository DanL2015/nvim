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

-- Window resize with Ctrl + Shift + {h, j, k, l}
vim.keymap.set("n", "<C-S-k>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-S-j>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-S-h>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-S-l>", ":vertical resize +2<CR>", opts)

vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Splitting
vim.keymap.set("n", "<leader>h", ":split<CR>:term<CR>:setlocal nonumber norelativenumber<CR>", opts)
vim.keymap.set("n", "<leader>v", ":vsplit<CR>:term<CR>:setlocal nonumber norelativenumber<CR>", opts)
vim.keymap.set("n", "<A-h>", ":split<CR>", opts)
vim.keymap.set("n", "<A-v>", ":vsplit<CR>", opts)

-- Comments
vim.keymap.set("n", "<C-_>", ":CommentToggle<CR>", opts)

-- Paste without yanking
vim.keymap.set("x", "p", "P", opts)

-- Close buffer
vim.keymap.set("n", "<C-c>", ":bd<CR>", opts)

-- Open telescope
vim.keymap.set("n", "<leader>t", ":Telescope<CR>", opts)
vim.keymap.set("n", "<leader>th", ":Telescope colorscheme<CR>", opts)
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", opts)
vim.keymap.set("n", "<leader>gf", ":Telescope git_files<CR>", opts)
vim.keymap.set("n", "<leader>lb", ":Telescope buffers<CR>", opts)

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

-- Toggle tree
vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

-- Don't show error message and warning symbols on left
-- That shift the text every time you type
vim.g.diagnostics_active = true
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    signs = false,
    underline = true,
    update_in_insert = false,
  }
)
