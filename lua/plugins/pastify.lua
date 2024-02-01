return {
  'TobinPalmer/pastify.nvim',
  cmd = { 'Pastify' },
  lazy = true,
  config = function()
    require('pastify').setup {}
  end
}
