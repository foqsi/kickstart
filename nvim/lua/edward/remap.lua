print("remap")
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>h", vim.cmd.Ex, { desc = "[H]ome" })

-- allows selection with V to move selected lines with J & K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- half page jumping, keeps cursor in middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- searching, keeps cursor in middle (n is next, N is previous)
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "n", "nzzzv")

-- copy, paste over another text (y to copy, leader p to paste)
vim.keymap.set("x", "<leader>p", '"_dP')

-- copy to system clipboard
--vim.keymap.set("n", "<leader>y", '"+y')
--vim.keymap.set("v", "<leader>y", '"+y')
--vim.keymap.set("n", "<leader>Y", '"+Y')

-- replace word cursor is on (space s)
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
