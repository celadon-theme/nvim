-- lualine themes, one per variant (lua/lualine/themes/<slug>.lua), built
-- from the same generated palette. Mode accents follow the family:
-- normal green (brand), insert blue, visual magenta, replace red,
-- command yellow, terminal cyan.

local M = {}

function M.theme(variant)
  local p = require("celadon.palette." .. variant)

  local function mode(accent)
    return {
      a = { fg = p.base, bg = accent, gui = "bold" },
      b = { fg = p.text, bg = p.overlay },
      c = { fg = p.subtle, bg = p.surface },
    }
  end

  return {
    normal = mode(p.green),
    insert = mode(p.blue),
    visual = mode(p.magenta),
    replace = mode(p.red),
    command = mode(p.yellow),
    terminal = mode(p.cyan),
    inactive = {
      a = { fg = p.muted, bg = p.surface },
      b = { fg = p.muted, bg = p.surface },
      c = { fg = p.muted, bg = p.surface },
    },
  }
end

return M
