return {
  {
    'akinsho/bufferline.nvim', version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
    local status, bufferline = pcall(require, 'bufferline')
    if (not status) then return end

    bufferline.setup({
      options = {
        mode = 'tabs',
        separator_style = 'thick',
        always_show_bufferline = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        color_icons = true
      },
      highlights = {
      },

    })
    end
  },
}
