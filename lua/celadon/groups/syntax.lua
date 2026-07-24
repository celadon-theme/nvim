-- Legacy :syntax groups. Role assignment (the loudness band is already
-- gated in the generator): strings green, keywords magenta, functions
-- blue, types indigo, constants/numbers orange, builtins/preproc cyan.

local M = {}

function M.get(p, o)
  local italics = o.italics

  return {
    Comment = { fg = p.muted, italic = italics },
    String = { fg = p.green },
    Character = { fg = p.green },
    Number = { fg = p.orange },
    Float = { fg = p.orange },
    Boolean = { fg = p.orange },
    Constant = { fg = p.orange },
    Identifier = { fg = p.text },
    Function = { fg = p.blue },
    Statement = { fg = p.magenta },
    Conditional = { fg = p.magenta },
    Repeat = { fg = p.magenta },
    Label = { fg = p.magenta },
    Operator = { fg = p.subtle },
    Keyword = { fg = p.magenta },
    Exception = { fg = p.magenta },
    PreProc = { fg = p.cyan },
    Include = { fg = p.cyan },
    Define = { fg = p.cyan },
    Macro = { fg = p.cyan },
    PreCondit = { fg = p.cyan },
    Type = { fg = p.indigo },
    StorageClass = { fg = p.indigo },
    Structure = { fg = p.indigo },
    Typedef = { fg = p.indigo },
    Special = { fg = p.cyan },
    SpecialChar = { fg = p.br_green },
    Tag = { fg = p.magenta },
    Delimiter = { fg = p.subtle },
    SpecialComment = { fg = p.subtle, italic = italics },
    Debug = { fg = p.orange },
    Underlined = { underline = true },
    Error = { fg = p.red },
    Todo = { fg = p.yellow, bold = true },
  }
end

return M
