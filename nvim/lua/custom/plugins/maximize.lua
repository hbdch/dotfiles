return {
  {
    'declancm/maximize.nvim',
    config = true,
    keys = {
      {
        '<Leader>m',
        function()
          require('maximize').toggle()
        end,
        desc = 'Toggle window maximize',
      },
    },
  },
}
