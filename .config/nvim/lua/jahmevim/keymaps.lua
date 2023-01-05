local keymap = vim.keymap

vim.g.mapleader = ' '

keymap.set('n', '<C-u>', '<C-u>zz', { silent = true })
keymap.set('n', '<C-d>', '<C-d>zz', { silent = true })

