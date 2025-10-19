-- File: ~/.config/nvim/colors/myterminal.lua

-- 1. Define the Color Palette
-- Use the standard 16-color names for clarity

local colors = {
    -- Background/Foreground
    bg  = "#151515", -- BG
    fg  = "#d0d0d0", -- FG

    -- Standard ANSI Colors (0-7)
    black   = "#151515", -- 0
    red     = "#fb9fb1", -- 1
    green   = "#acc267", -- 2
    yellow  = "#ddb26f", -- 3
    blue    = "#6fc2ef", -- 4
    magenta = "#e1a3ee", -- 5
    cyan    = "#12cfc0", -- 6
    white   = "#d0d0d0", -- 7

    -- Bright ANSI Colors (8-15)
    br_black   = "#505050", -- 8
    br_red     = "#fb9fb1", -- 9 (Using same color as 1, common terminal behavior)
    br_green   = "#acc267", -- 10
    br_yellow  = "#ddb26f", -- 11
    br_blue    = "#6fc2ef", -- 12
    br_magenta = "#e1a3ee", -- 13
    br_cyan    = "#12cfc0", -- 14
    br_white   = "#f5f5f5", -- 15

    -- UI/Helper colors
    line_nr = "#505050",
    current_line = "#222222",
}

-- 2. Configuration Settings
vim.opt.background = "dark"
vim.opt.termguicolors = true -- Always use true-color/guicolors for custom themes

-- 3. Set Base Highlight Groups
-- nvim_set_hl(0, group, { fg, bg, style })
local set_hl = vim.api.nvim_set_hl

-- Normal text and window background
set_hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
set_hl(0, "NonText", { fg = colors.line_nr, bg = colors.bg }) -- Characters beyond text limits

-- Line Numbers and Current Line
set_hl(0, "LineNr", { fg = colors.line_nr, bg = colors.bg })
set_hl(0, "CursorLine", { bg = colors.current_line })
set_hl(0, "CursorLineNr", { fg = colors.fg, bg = colors.current_line, bold = true })

-- Status/UI Elements
set_hl(0, "StatusLine", { fg = colors.fg, bg = colors.current_line })
set_hl(0, "VertSplit", { fg = colors.current_line, bg = colors.bg })
set_hl(0, "Visual", { bg = colors.br_black }) -- Highlighted selection

-- 4. Set Syntax Highlight Groups (Example Set)
set_hl(0, "Comment", { fg = colors.br_black, italic = true }) -- Comments
set_hl(0, "Constant", { fg = colors.yellow }) -- Numbers, strings, etc.
set_hl(0, "String", { fg = colors.green })
set_hl(0, "Number", { fg = colors.yellow })
set_hl(0, "Statement", { fg = colors.red, bold = true }) -- if, for, return
set_hl(0, "Type", { fg = colors.blue, bold = true })     -- int, void, struct
set_hl(0, "Identifier", { fg = colors.cyan })            -- Variables, function names
set_hl(0, "Function", { fg = colors.blue })
set_hl(0, "PreProc", { fg = colors.magenta })            -- #include, #define (C/C++)
