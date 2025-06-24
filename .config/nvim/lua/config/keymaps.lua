local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Window splitting.
map("n", "<leader>-", "<cmd>split<CR>", { desc = "Horizontal split", unpack(opts) })
map("n", "<leader>|", "<cmd>vsplit<CR>", { desc = "Vertical split", unpack(opts) })

-- Navigating windows.
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Jump half a screen down/up and center
map("n", "<C-d>", "<C-d>zz", { desc = "Half screen down and center", unpack(opts) })
map("n", "<C-u>", "<C-u>zz", { desc = "Half screen up and center", unpack(opts) })

-- Find and center
map("n", "n", "nzz", { desc = "Find next and center", unpack(opts) })
map("n", "N", "Nzz", { desc = "Find prev and center", unpack(opts) })

-- Copy and paste
map("x", "<leader>p", [["_dP]], { desc = "Paste without losing yank", unpack(opts) })
map({ "n", "x" }, "<leader>P", [["+p]], { desc = "Paste from system clipboard", unpack(opts) })

map("n", "U", "<C-r>", { desc = "Redo", unpack(opts) })

-- FZF
map("n", "<leader>ff", require("fzf-lua").files, { desc = "FZF files", unpack(opts) })
map("n", "<leader>fb", require("fzf-lua").buffers, { desc = "FZF buffer", unpack(opts) })
map("n", "<leader>fh", require("fzf-lua").help_tags, { desc = "FZF help", unpack(opts) })
map("n", "<leader>fc", require("fzf-lua").commands, { desc = "FZF commands", unpack(opts) })

-- Git
map("n", "<leader>gd", "<cmd>DiffviewOpen<cr>", { desc = "Git diff", unpack(opts) })
map("n", "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", { desc = "Git file history (current file)", unpack(opts) })
map("n", "<leader>gH", "<cmd>DiffviewFileHistory<cr>", { desc = "Git file history (entire repo)", unpack(opts) })
map("n", "<leader>gq", "<cmd>DiffviewClose<cr>", { desc = "Close Git", unpack(opts) })

-- LSP
map("n", "<leader>d", vim.lsp.buf.definition, { desc = "LSP definition", unpack(opts) })
map("n", "<leader>r", vim.lsp.buf.references, { desc = "LSP references", unpack(opts) })
map("n", "<leader>n", vim.lsp.buf.rename, { desc = "LSP rename symbol", unpack(opts) })
map("n", "<leader>a", vim.lsp.buf.code_action, { desc = "LSP code action", unpack(opts) })
map("n", "<leader>w", vim.diagnostic.open_float, { desc = "LSP show message", unpack(opts) })
