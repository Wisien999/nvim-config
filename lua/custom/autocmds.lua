

local function runCurrentFileBinding(cmd)
    vim.keymap.set('n', "<leader>rf", cmd, { desc = "[R]un Current [F]ile" })
end


vim.api.nvim_create_autocmd("BufRead", {
        pattern = { '*.py' },
        callback = function()
            print('Installing python keybindings...')
            runCurrentFileBinding(":w !python<Enter>")
        end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "gitcommit",
  callback = function()
    vim.opt_local.textwidth = 72
    -- Optional: also set a visual guideline at 72 chars
    vim.opt_local.colorcolumn = "72" 
  end,
})

