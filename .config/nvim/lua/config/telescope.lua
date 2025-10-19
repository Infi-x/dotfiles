local function get_theme_colors()
    -- Manually define the colors needed for Telescope from your custom palette
    return {
        bg = "#151515",        -- BG
        fg = "#d0d0d0",        -- FG
        br_black = "#505050",  -- 8 (Used for borders/separators)
        blue = "#6fc2ef",      -- 4 (Used for selection/matches)
    }
end

return function()
    local colors = get_theme_colors()

    require('telescope').setup({
      defaults = {
          -- Default settings for all pickers
          border = true,
          borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
          dynamic_preview_title = true,
          layout_config = {
              -- Configure the prompt to be narrow/clean
              prompt_position = "top",
          },
      },
      extensions = {}, -- Add any extensions here
      -- Theme Configuration (Key part for colors)
      color_dev = {
          -- Set the general background/foreground
        TelescopeBorder = { fg = colors.br_black, bg = colors.bg },
        TelescopePromptBorder = { fg = colors.br_black, bg = colors.bg },
        TelescopeResultsBorder = { fg = colors.br_black, bg = colors.bg },
        TelescopePromptTitle = { fg = colors.blue, bg = colors.bg },
        TelescopeResultsTitle = { fg = colors.blue, bg = colors.bg },
         -- Set the colors for results and selection
        TelescopePromptNormal = { fg = colors.fg, bg = colors.bg },
        TelescopePromptPrefix = { fg = colors.blue, bg = colors.bg },
        TelescopePromptCounter = { fg = colors.blue, bg = colors.bg },
        TelescopeNormal = { fg = colors.fg, bg = colors.bg },
        TelescopeSelection = { fg = colors.bg, bg = colors.blue }, -- Invert colors for selection
        TelescopeMatching = { fg = colors.blue, bold = true },      -- Highlighted search match
    },   
    file_ignore_patterns = {
      "node_modules",      -- Ignore the entire node_modules folder
      ".git/",             -- Ignore the .git directory
      "%.sqlite3",         -- Ignore specific file extensions (example)
      "dist/",             -- Ignore distribution/build directories
      "__pycache__/",      -- Ignore Python cache folders
    },
  })
end
