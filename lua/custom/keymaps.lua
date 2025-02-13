local map = vim.keymap.set
return {
  map('n', '<Enter>', 'o<ESC>'),
  map('n', '<leader>e', ':RunCode <CR>', { desc = '[e]xecute code', silent = true }),
  map('n', '<leader>h', '<cmd> lua vim.diagnostic.open_float() <CR>'),
  map({ 'n', 'v' }, 'Y', 'yy'),
  map({ 'n', 'v' }, '<leader>y', '"+y', { desc = 'Copy to system clipboard' }),
  map({ 'n', 'v' }, '<leader>Y', '"+Y', { desc = 'Copy line to system clipboard' }),
  map({ 'n', 'v' }, '<leader>p', '"+p', { desc = 'Paste from system clipboard' }),
  map('n', 's', ':HopPattern <CR>', { silent = true }),
}
