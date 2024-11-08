vim.keymap.set('n', '<leader>e',"<cmd>Explore<cr>" , { desc = 'Binding to go to netrw' })
--mooowe
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
--cp to clippy
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
