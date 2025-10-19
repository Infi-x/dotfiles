return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter", -- Load only when you start typing
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",   -- LSP source
    "hrsh7th/cmp-buffer",     -- Buffer source
    "L3MON4D3/LuaSnip",       -- Snippet engine
    "saadparwaiz1/cmp_luasnip", -- Snippet source
    "hrsh7th/cmp-path",       -- File path source (recommended)
  },
  -- Use the config file
  config = function()
    require("config.completions")
  end
}
