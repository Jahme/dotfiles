local opts = {
  shiftwidth = 2,
  tabstop = 2,
  expandtab = true,
  autoindent = true,
  smartindent = true,
  smarttab = true,
  scrolloff = 10,
  wrap = false,
  number = true,
  relativenumber = true,
  cursorline = true,
}

for opt, val in pairs(opts) do
  vim.o[opt] = val
end
