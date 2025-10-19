return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  build = ':TSUpdate',
  opts = {
    highlight = { enable = true },
    indent = { enable = false },
    ensure_installed = {
      "c", "cpp", "lua", "vim", "vimdoc", "query", "javascript", "typescript", "json", "terraform",
      "tsx"
    },
    sync_install = false,
    auto_install = true
  }
}
