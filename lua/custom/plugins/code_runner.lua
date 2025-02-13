return {
  {
    'CRAG666/code_runner.nvim',
    opts = {
      -- Better term doesn't seem to work with windows
      -- mode = 'better_term',
      -- better_term = {
      --   number = 1,
      -- },
      filetype = {
        python = "python -u '$dir/$fileName'",
      },
    },
  },
}
