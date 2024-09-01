vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<cr>", { desc = "Clear search highlights" })

-- icrement & decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>h", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", vim.cmd.close, { desc = "Close current split" })

-- tabs
keymap.set("n", "<leader>tn", vim.cmd.tabnew, { desc = "Open a new tab" })
keymap.set("n", "<leader>tx", vim.cmd.tabclose, { desc = "Clpse current tab" })
keymap.set("n", "<leader>tk", vim.cmd.tabn, { desc = "Go to next tab" })
keymap.set("n", "<leader>tj", vim.cmd.tabp, { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<cr>", { desc = "Open current buffer in new tab" })

keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")

keymap.set("n", "<A-j>", "<cmd>move +1<cr>", { desc = "Move line down" })
keymap.set("n", "<A-k>", "<cmd>move -2<cr>", { desc = "Move line up" })
