vim.keymap.set("n", "<Esc>", ":noh<cr>", { silent = true })
vim.keymap.set("n", "<C-s>", ":w<cr>", { silent = true, desc = "Save File" })
vim.keymap.set("n", "<leader>w", ":w<cr>", { silent = true, desc = "Save File" })
vim.keymap.set("n", "<leader>q", ":q<cr>", { silent = true, desc = "Quit Neovim" })
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move line down", silent = true })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move line up", silent = true })
vim.keymap.set("x", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move line down", silent = true })
vim.keymap.set("x", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move line up", silent = true })
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode", silent = true })
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode", silent = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Switch to left window", silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Switch to right window", silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Switch to below window", silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Switch to above window", silent = true })

require("which-key").register {
  -- ['<leader>c'] = { name = 'Code', _ = 'which_key_ignore' },
  -- ['<leader>d'] = { name = 'Document', _ = 'which_key_ignore' },
  -- ['<leader>g'] = { name = 'Git', _ = 'which_key_ignore' },
  -- ['<leader>h'] = { name = 'More git', _ = 'which_key_ignore' },
  -- ['<leader>r'] = { name = 'Rename', _ = 'which_key_ignore' },
  -- ['<leader>s'] = { name = 'Search', _ = 'which_key_ignore' },
  -- ['<leader>w'] = { name = 'Workspace', _ = 'which_key_ignore' },
  ["<leader>b"] = { name = "Buffers", _ = "which_key_ignore" },
  ["<leader>f"] = { name = "Find", _ = "which_key_ignore" },
  ["<leader>l"] = { name = "LSP", _ = "which_key_ignore" },
}

local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = "*",
})
