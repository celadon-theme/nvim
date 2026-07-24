-- Core editor UI. Field ramp: base → Normal, surface → panels,
-- overlay → selections, overlay2 → window chrome. Focus chrome is magenta
-- (the family convention: omp caret, Claude Code prompt border).

local M = {}

function M.get(p, o)
  local bg = o.transparent and "NONE" or p.base

  return {
    Normal = { fg = p.text, bg = bg },
    NormalNC = { fg = p.text, bg = bg },
    NormalFloat = { fg = p.text, bg = p.surface },
    FloatBorder = { fg = p.muted, bg = p.surface },
    FloatTitle = { fg = p.green, bg = p.surface, bold = true },

    Cursor = { fg = p.base, bg = p.subtle },
    TermCursor = { fg = p.base, bg = p.subtle },
    CursorLine = { bg = p.surface },
    CursorColumn = { bg = p.surface },
    ColorColumn = { bg = p.surface },
    CursorLineNr = { fg = p.text },
    LineNr = { fg = p.muted },
    SignColumn = { fg = p.muted, bg = bg },
    FoldColumn = { fg = p.muted, bg = bg },
    Folded = { fg = p.subtle, bg = p.surface },
    Conceal = { fg = p.muted },
    NonText = { fg = p.overlay2 },
    Whitespace = { fg = p.overlay2 },
    SpecialKey = { fg = p.cyan },
    EndOfBuffer = { fg = p.overlay2 },

    Visual = { bg = p.overlay },
    Search = { bg = p.magenta_tint },
    CurSearch = { fg = p.base, bg = p.magenta },
    IncSearch = { fg = p.base, bg = p.magenta },
    MatchParen = { fg = p.magenta, bold = true },
    QuickFixLine = { bg = p.overlay },

    StatusLine = { fg = p.text, bg = p.surface },
    StatusLineNC = { fg = p.muted, bg = p.surface },
    WinSeparator = { fg = p.overlay2 },
    VertSplit = { fg = p.overlay2 },
    TabLine = { fg = p.subtle, bg = p.surface },
    TabLineSel = { fg = p.text, bg = p.overlay },
    TabLineFill = { bg = p.surface },
    WinBar = { fg = p.subtle, bg = bg },
    WinBarNC = { fg = p.muted, bg = bg },

    Pmenu = { fg = p.text, bg = p.surface },
    PmenuSel = { bg = p.overlay },
    PmenuSbar = { bg = p.overlay },
    PmenuThumb = { bg = p.muted },
    WildMenu = { link = "PmenuSel" },

    Title = { fg = p.green, bold = true },
    Directory = { fg = p.blue },
    ErrorMsg = { fg = p.red },
    WarningMsg = { fg = p.yellow },
    MoreMsg = { fg = p.green },
    ModeMsg = { fg = p.subtle },
    Question = { fg = p.blue },
    MsgArea = { fg = p.text },

    DiffAdd = { bg = p.diff_add },
    DiffChange = { bg = p.magenta_tint },
    DiffDelete = { bg = p.diff_del },
    DiffText = { bg = p.diff_add_word },
    Added = { fg = p.green },
    Changed = { fg = p.blue },
    Removed = { fg = p.red },

    SpellBad = { undercurl = true, sp = p.red },
    SpellCap = { undercurl = true, sp = p.yellow },
    SpellLocal = { undercurl = true, sp = p.cyan },
    SpellRare = { undercurl = true, sp = p.magenta },
  }
end

return M
