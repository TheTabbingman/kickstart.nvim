local map = vim.keymap.set
local opts = { noremap = true, silent = true }
return {
  map('n', '<Enter>', 'o<ESC>'),
  map('n', '<leader>e', ':RunCode <CR>', { desc = '[e]xecute code', silent = true }),
  map('n', '<leader>h', '<cmd> lua vim.diagnostic.open_float() <CR>'),
  map({ 'n', 'v' }, 'Y', 'yy'),
  map({ 'n', 'v' }, '<leader>y', '"+y', { desc = 'Copy to system clipboard' }),
  map({ 'n', 'v' }, '<leader>Y', '"+Y', { desc = 'Copy line to system clipboard' }),
  map({ 'n', 'v' }, '<leader>p', '"+p', { desc = 'Paste from system clipboard' }),
  map('n', 's', ':HopPattern <CR>', { silent = true }),
  map('n', '<leader>h', vim.lsp.buf.hover, { desc = 'Show hover info' }),

  -- barbar keymaps
  -- Move to previous/next
  map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts),
  map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts),

  -- Re-order to previous/next
  map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts),
  map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts),

  -- Goto buffer in position...
  map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts),
  map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts),
  map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts),
  map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts),
  map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts),
  map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts),
  map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts),
  map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts),
  map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts),
  map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts),

  -- Pin/unpin buffer
  map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts),

  -- Goto pinned/unpinned buffer
  --                 :BufferGotoPinned
  --                 :BufferGotoUnpinned

  -- Close buffer
  map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts),

  -- Wipeout buffer
  --                 :BufferWipeout

  -- Close commands
  --                 :BufferCloseAllButCurrent
  --                 :BufferCloseAllButPinned
  --                 :BufferCloseAllButCurrentOrPinned
  --                 :BufferCloseBuffersLeft
  --                 :BufferCloseBuffersRight

  -- Magic buffer-picking mode
  map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts),
  map('n', '<C-s-p>', '<Cmd>BufferPickDelete<CR>', opts),

  -- Sort automatically by...
  map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts),
  map('n', '<Space>bn', '<Cmd>BufferOrderByName<CR>', opts),
  map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts),
  map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts),
  map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts),
}
