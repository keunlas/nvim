return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',

      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',

      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",

      "onsails/lspkind-nvim",
      "rafamadriz/friendly-snippets",
      'luozhiya/fittencode.nvim',
    },
    event = { "InsertEnter", "CmdlineEnter" },
  },
}
