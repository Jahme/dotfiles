return {
  {
    'jose-elias-alvarez/null-ls.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = { 'nvim-lua/plenary.nvim', 'williamboman/mason.nvim' },
    config = function()
      local status, nls = pcall(require, 'null-ls')
      if (not status) then return end

      nls.setup({
        sources = {
          -- Python
          nls.builtins.formatting.black,
          nls.builtins.diagnostics.ruff,
        }
      })
    end
  }
}
