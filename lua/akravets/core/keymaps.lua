local keymap = vim.keymap 
vim.g.mapleader = ' ';

-- Map <leader>w to :w (save)
vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', { noremap = true, silent = true });

-- Map <leader>q to :q (quit)
vim.api.nvim_set_keymap('n', '<Leader>q', ':q<CR>', { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', '<Leader>e', ':Rex<CR>', { noremap = true, silent = true });

-- Window Split
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>ss", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "<leader>sj", "<C-w>j", { desc = "Go split down" }) -- make split windows equal width & height
keymap.set("n", "<leader>sk", "<C-w>k", { desc = "Go split up" }) -- make split windows equal width & height
keymap.set("n", "<leader>sh", "<C-w>h", { desc = "Go split left" }) -- make split windows equal width & height
keymap.set("n", "<leader>sl", "<C-w>l", { desc = "Go split right" }) -- make split windows equal width & height

-- Term
keymap.set("t", "<esc>", "<C-\\><C-n>", { desc = "Close Terminal"})

-- LazyGit
keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "Open LazyGit"})
