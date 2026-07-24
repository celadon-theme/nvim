local M = {}

function M.get(p, o)
  return {
    TelescopeNormal = { fg = p.text, bg = p.surface },
    TelescopeBorder = { fg = p.muted, bg = p.surface },
    TelescopeTitle = { fg = p.green, bold = true },
    TelescopePromptNormal = { fg = p.text, bg = p.overlay },
    TelescopePromptBorder = { fg = p.muted, bg = p.overlay },
    TelescopePromptPrefix = { fg = p.magenta },
    TelescopeSelection = { bg = p.overlay },
    TelescopeSelectionCaret = { fg = p.magenta, bg = p.overlay },
    TelescopeMatching = { fg = p.magenta, bold = true },
    TelescopeMultiSelection = { fg = p.cyan },
  }
end

return M
