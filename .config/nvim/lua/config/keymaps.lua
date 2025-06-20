local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- TODO: Remap semicolon action to some other key.
-- Movement remap.
local modes = { "n", "v", "o" }
vim.keymap.set(modes, "h", "<Nop>", opts)
vim.keymap.set(modes, "j", "<Left>", opts)
vim.keymap.set(modes, "k", "<Down>", opts)
vim.keymap.set(modes, "l", "<Up>", opts)
vim.keymap.set(modes, ";", "<Right>", opts)

-- Window splitting.
map("n", "<leader>-", "<cmd>split<CR>", { desc = "Horizontal split", unpack(opts) })
map("n", "<leader>|", "<cmd>vsplit<CR>", { desc = "Vertical split", unpack(opts) })

-- Navigating windows.
map("n", "<C-j>", "<C-w>h", opts)
map("n", "<C-k>", "<C-w>j", opts)
map("n", "<C-l>", "<C-w>k", opts)
map("n", "<C-;>", "<C-w>l", opts)
-- Same movements for navigating between windows that are terminals.
map("t", "<C-j>", [[<C-\><C-n><C-w>h]], opts)
map("t", "<C-k>", [[<C-\><C-n><C-w>j]], opts)
map("t", "<C-l>", [[<C-\><C-n><C-w>k]], opts)
map("t", "<C-;>", [[<C-\><C-n><C-w>l]], opts)

-- Files
map("n", "<leader>ff", require("fzf-lua").files, { desc = "Find files", unpack(opts) })
-- Buffers
map("n", "<leader>fb", require("fzf-lua").buffers, { desc = "Find buffer", unpack(opts) })
-- Help tags
map("n", "<leader>fh", require("fzf-lua").help_tags, { desc = "Find help", unpack(opts) })
-- Commands
map("n", "<leader>fc", require("fzf-lua").commands, { desc = "Find commands", unpack(opts) })

-- LSP
map("n", "<leader>d", vim.lsp.buf.definition, { desc = "Go to definition", unpack(opts) })
map("n", "<leader>r", vim.lsp.buf.references, { desc = "Find references", unpack(opts) })
map("n", "<leader>n", vim.lsp.buf.rename, { desc = "Rename symbol", unpack(opts) })
map("n", "<leader>a", vim.lsp.buf.code_action, { desc = "Code action", unpack(opts) })
map("n", "<leader>w", vim.diagnostic.open_float, { desc = "Show diagnostic message", unpack(opts) })
