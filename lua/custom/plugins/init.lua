-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  { 'wakatime/vim-wakatime', lazy = false },
  -- {
  --   'nvim-tree/nvim-tree.lua',
  --   opts = {},
  -- },

  {
    'CRAG666/betterTerm.nvim',
    opts = {
      position = 'bot',
      size = 15,
    },
  },
  -- {
  --   'justinmk/vim-sneak',
  -- },
  {
    'smoka7/hop.nvim',
    version = '*',
    opts = {
      keys = 'etovxqpdygfblzhckisuran',
    },
  },
  -- {
  --   'stevearch/overseer.nvim',
  --   opts = {
  --     templates = { 'builtin', 'user.cpp_build', 'user.python_run' },
  --   },
  -- },
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
  {
    'MysticalDevil/inlay-hints.nvim',
    event = 'LspAttach',
    dependencies = { 'neovim/nvim-lspconfig' },
    config = function()
      require('inlay-hints').setup()
    end,
  },
}
