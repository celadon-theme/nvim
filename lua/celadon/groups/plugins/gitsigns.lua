local M = {}

function M.get(p, o)
  return {
    GitSignsAdd = { fg = p.green },
    GitSignsChange = { fg = p.blue },
    GitSignsDelete = { fg = p.red },
    GitSignsAddNr = { fg = p.green },
    GitSignsChangeNr = { fg = p.blue },
    GitSignsDeleteNr = { fg = p.red },
    GitSignsAddLn = { bg = p.diff_add },
    GitSignsChangeLn = { bg = p.magenta_tint },
    GitSignsDeleteLn = { bg = p.diff_del },
    GitSignsAddInline = { bg = p.diff_add_word },
    GitSignsChangeInline = { bg = p.magenta_tint },
    GitSignsDeleteInline = { bg = p.diff_del_word },
    GitSignsCurrentLineBlame = { fg = p.muted, italic = o.italics },
  }
end

return M
