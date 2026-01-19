return {
  {
    'stevearc/oil.nvim',
    lazy = false,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      float = {
        border = 'rounded',
        title = function()
          return vim.fn.fnamemodify(vim.fn.getcwd(), ':~')
        end,
        title_pos = 'center',
      },
    },
    keys = {
      {
        '<Leader>o',
        function()
          local dir = vim.fn.expand '%:p:h'
          if dir == '' then
            dir = vim.fn.getcwd()
          end
          require('oil').open_float(dir)
        end,
        desc = 'Oil float (current dir)',
      },
    },
  },
}
