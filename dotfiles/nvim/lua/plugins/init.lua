return {
  "christoomey/vim-tmux-navigator",

  "RobertBrunhage/flutter-riverpod-snippets",
  "Neevash/awesome-flutter-snippets",

  ({
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
  }),
  {
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {},
  },
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
}
