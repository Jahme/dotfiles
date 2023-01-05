local status, mason = pcall(require, 'mason')
if (not status) then return end
local status2, masonconf = pcall(require, 'mason-lspconfig')
if (not status2) then return end

-- Mason
mason.setup()

-- Mason Configuration
masonconf.setup({
  ensure_installed = {'sumneko_lua'},

  automatic_installation = true,
})
