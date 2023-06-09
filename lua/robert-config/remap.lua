vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>w", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("v", "<leader>w", [[:s//gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>r", [[viwy/\V<C-r>"<CR>Ncgn]])
vim.keymap.set("n", "<leader>R", [[viWy/\V<C-r>"<CR>Ncgn]])
vim.keymap.set("v", "<leader>r", [[y/\V<C-r>"<CR>Ncgn]])
vim.keymap.set("n", "<leader>W", [[:%s/\s\{1,}//gc<Left><Left><Left>]])
vim.keymap.set("v", "<leader>W", [[:s/\s\{1,}//gc<Left><Left><Left>]])

vim.keymap.set("n", "<leader>l", [[:ls<cr>:b]])

vim.keymap.set("v", ">", ">gv^")
vim.keymap.set("v", "<", "<gv^")

