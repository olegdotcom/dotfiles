local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Splits
map("n", "<leader>-", "<cmd>split<CR>", { desc = "Horizontal split", unpack(opts) })
map("n", "<leader>|", "<cmd>vsplit<CR>", { desc = "Vertical split", unpack(opts) })

-- Navigating windows.
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)
-- Same movements for navigating between windows that are terminals.
map("t", "<C-h>", [[<C-\><C-n><C-w>h]], opts)
map("t", "<C-j>", [[<C-\><C-n><C-w>j]], opts)
map("t", "<C-k>", [[<C-\><C-n><C-w>k]], opts)
map("t", "<C-l>", [[<C-\><C-n><C-w>l]], opts)

