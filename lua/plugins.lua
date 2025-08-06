-- Plugins
vim.pack.add({
  {src = 'https://github.com/junegunn/seoul256.vim'},
  {src = 'https://github.com/supermaven-inc/supermaven-nvim'},
  {src = 'https://github.com/nvim-treesitter/nvim-treesitter'},
  {src = 'https://github.com/ibhagwan/fzf-lua'},
})

-- Colorscheme
vim.cmd("colorscheme seoul256")
vim.cmd("hi Normal guibg=NONE")
vim.cmd("hi Visual ctermfg=none")

-- Plugin setup
require('supermaven-nvim').setup({})

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "vue", "typescript", "php" },
  sync_install = false,
  auto_install = true,
  ignore_install = { "javascript" },
  highlight = {
    enable = true,
    disable = function(lang, buf)
      local max_filesize = 100 * 1024 -- 100 KB
      local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
      if ok and stats and stats.size > max_filesize then
        return true
      end
    end,
    additional_vim_regex_highlighting = false,
  },
}
