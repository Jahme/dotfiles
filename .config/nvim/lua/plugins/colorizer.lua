return {
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      local colorizerstatus, colorizer = pcall(require, 'colorizer')
      if (not colorizerstatus) then return end

      colorizer.setup({

      })
    end,
  },
}
