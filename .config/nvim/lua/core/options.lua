local opts = {
  shiftwidth = 2,
  tabstop = 2,
  expandtab = true,
  wrap = false,
  number = true,
  relativenumber = true,
}

for opt, val in pairs(opts) do
  vim.o[opt] = val
end
