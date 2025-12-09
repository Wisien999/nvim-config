-- jj for escape from INSERT
vim.keymap.set('i', 'jj', '<Esc>', {})

vim.keymap.set('n', '<leader>h', ':tabprev<Enter>')
vim.keymap.set('n', '<leader>l', ':tabnext<Enter>')
vim.keymap.set('n', '[t', ':tabprev<Enter>')
vim.keymap.set('n', ']t', ':tabnext<Enter>')

vim.keymap.set('n', '<leader>q', ':q<Enter>')
vim.keymap.set('n', '<leader>w', ':w<Enter>')

vim.keymap.set('n', '<leader>e', ':tabnew | Oil<CR>')

vim.keymap.set('n', '<C-/>', function()
  require('Comment.api').toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1)
end, {})
vim.keymap.set('v', '<C-/>', "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", {})
