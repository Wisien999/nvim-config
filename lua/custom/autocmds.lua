local function runCurrentFileBinding(cmd)
  vim.keymap.set('n', '<leader>rf', cmd, { desc = '[R]un Current [F]ile' })
end

vim.api.nvim_create_autocmd('BufRead', {
  pattern = { '*.py' },
  callback = function()
    print 'Installing python keybindings...'
    runCurrentFileBinding ':w !python<Enter>'
  end,
})
