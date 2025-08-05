-- Helper function for keymaps
local map = vim.keymap.set

-- FzfLua setup (deferred to ensure plugin loads)
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.defer_fn(function()
      local fzf = require('fzf-lua')
      
      -- FzfLua keymaps
      map('n', '<leader><leader>', fzf.files, { desc = 'Find files' })
      map('n', '<leader>/', fzf.live_grep, { desc = 'Live grep' })
      map('n', 'gr', fzf.grep_cword, { desc = 'Grep word under cursor' })
    end, 100)
  end
})