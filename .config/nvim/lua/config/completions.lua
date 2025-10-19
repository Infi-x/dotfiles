local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
  sources = {
    { name = 'nvim_lsp' },     -- Provided by cmp-nvim-lsp (For LSP suggestions)
    { name = 'luasnip' },      -- Provided by cmp-luasnip (For snippets)
    { name = 'buffer' },       -- Provided by cmp-buffer (Words in the current buffer)
    { name = 'path' },         -- Provided by cmp-path (File paths)
  },

  -- Keybindings for the completion menu
  mapping = cmp.mapping.preset.insert({
    -- Select the next item
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-p>'] = cmp.mapping.select_prev_item(),

    -- Accept the selected item/snippet
    ['<CR>'] = cmp.mapping.confirm({ select = true }),

    -- Trigger completion again
    ['<C-Space>'] = cmp.mapping.complete(),
  }),

  -- Snippet engine configuration
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },

  -- Look and Feel
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  
  -- The cmp.setup() function is now complete and correctly loads all sources.
})
