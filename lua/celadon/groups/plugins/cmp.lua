local M = {}

function M.get(p, o)
  return {
    CmpItemAbbr = { fg = p.text },
    CmpItemAbbrDeprecated = { fg = p.muted, strikethrough = true },
    CmpItemAbbrMatch = { fg = p.magenta, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = p.magenta },
    CmpItemMenu = { fg = p.muted },
    CmpItemKindText = { fg = p.subtle },
    CmpItemKindMethod = { fg = p.blue },
    CmpItemKindFunction = { fg = p.blue },
    CmpItemKindConstructor = { fg = p.indigo },
    CmpItemKindField = { fg = p.cyan },
    CmpItemKindVariable = { fg = p.text },
    CmpItemKindClass = { fg = p.indigo },
    CmpItemKindInterface = { fg = p.indigo },
    CmpItemKindModule = { fg = p.indigo },
    CmpItemKindProperty = { fg = p.cyan },
    CmpItemKindUnit = { fg = p.orange },
    CmpItemKindValue = { fg = p.orange },
    CmpItemKindEnum = { fg = p.indigo },
    CmpItemKindKeyword = { fg = p.magenta },
    CmpItemKindSnippet = { fg = p.green },
    CmpItemKindColor = { fg = p.magenta },
    CmpItemKindFile = { fg = p.blue },
    CmpItemKindReference = { fg = p.cyan },
    CmpItemKindFolder = { fg = p.blue },
    CmpItemKindEnumMember = { fg = p.orange },
    CmpItemKindConstant = { fg = p.orange },
    CmpItemKindStruct = { fg = p.indigo },
    CmpItemKindEvent = { fg = p.yellow },
    CmpItemKindOperator = { fg = p.subtle },
    CmpItemKindTypeParameter = { fg = p.indigo },
  }
end

return M
