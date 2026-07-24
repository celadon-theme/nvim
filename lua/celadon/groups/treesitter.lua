-- Treesitter @captures. Mostly links into the syntax roles; explicit
-- entries only where treesitter is finer-grained than :syntax.

local M = {}

function M.get(p, o)
  local italics = o.italics

  return {
    ["@comment"] = { link = "Comment" },
    ["@comment.todo"] = { link = "Todo" },
    ["@comment.error"] = { fg = p.red, bold = true },
    ["@comment.warning"] = { fg = p.yellow, bold = true },
    ["@comment.note"] = { fg = p.blue, bold = true },

    ["@string"] = { link = "String" },
    ["@string.escape"] = { fg = p.br_green },
    ["@string.regexp"] = { fg = p.br_cyan },
    ["@string.special.url"] = { fg = p.blue, underline = true },
    ["@character"] = { link = "Character" },
    ["@number"] = { link = "Number" },
    ["@number.float"] = { link = "Float" },
    ["@boolean"] = { link = "Boolean" },
    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { fg = p.orange, italic = italics },
    ["@constant.macro"] = { link = "Macro" },

    ["@variable"] = { fg = p.text },
    ["@variable.builtin"] = { fg = p.cyan, italic = italics },
    ["@variable.parameter"] = { fg = p.text, italic = italics },
    ["@variable.member"] = { fg = p.cyan },

    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { fg = p.blue, italic = italics },
    ["@function.macro"] = { link = "Macro" },
    ["@function.method"] = { link = "Function" },
    ["@constructor"] = { fg = p.indigo },

    ["@keyword"] = { link = "Keyword" },
    ["@keyword.return"] = { fg = p.magenta, italic = italics },
    ["@keyword.exception"] = { link = "Exception" },
    ["@keyword.import"] = { link = "Include" },
    ["@operator"] = { link = "Operator" },

    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { fg = p.indigo, italic = italics },
    ["@module"] = { fg = p.indigo },
    ["@label"] = { link = "Label" },
    ["@attribute"] = { fg = p.cyan },
    ["@property"] = { fg = p.cyan },

    ["@punctuation.delimiter"] = { link = "Delimiter" },
    ["@punctuation.bracket"] = { fg = p.subtle },
    ["@punctuation.special"] = { fg = p.cyan },

    ["@tag"] = { link = "Tag" },
    ["@tag.attribute"] = { fg = p.cyan },
    ["@tag.delimiter"] = { fg = p.subtle },

    ["@markup.heading"] = { fg = p.green, bold = true },
    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.link"] = { fg = p.blue },
    ["@markup.link.url"] = { fg = p.blue, underline = true },
    ["@markup.raw"] = { fg = p.br_green },
    ["@markup.quote"] = { fg = p.subtle, italic = italics },
    ["@markup.list"] = { fg = p.magenta },

    ["@diff.plus"] = { link = "Added" },
    ["@diff.minus"] = { link = "Removed" },
    ["@diff.delta"] = { link = "Changed" },
  }
end

return M
