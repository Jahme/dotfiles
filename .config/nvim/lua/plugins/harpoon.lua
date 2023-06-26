return {
  {
    'ThePrimeagen/harpoon',
    dependencies = { { 'nvim-lua/plenary.nvim' } },
    config = function()
      local status, harpoon = pcall(require, 'harpoon')
      if (not status) then return end

      -- Setup Configuration 
      harpoon.setup({
      })
    end
  },
}
