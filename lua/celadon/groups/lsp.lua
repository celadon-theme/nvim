-- Diagnostics + LSP. Honest semantics: Error red, Warn yellow, Info blue,
-- Hint cyan. Semantic tokens link into the treesitter/syntax roles.

local M = {}

function M.get(p, o)
  return {
    DiagnosticError = { fg = p.red },
    DiagnosticWarn = { fg = p.yellow },
    DiagnosticInfo = { fg = p.blue },
    DiagnosticHint = { fg = p.cyan },
    DiagnosticOk = { fg = p.green },
    DiagnosticUnderlineError = { undercurl = true, sp = p.red },
    DiagnosticUnderlineWarn = { undercurl = true, sp = p.yellow },
    DiagnosticUnderlineInfo = { undercurl = true, sp = p.blue },
    DiagnosticUnderlineHint = { undercurl = true, sp = p.cyan },
    DiagnosticVirtualTextError = { fg = p.red, bg = p.diff_del_dim },
    DiagnosticVirtualTextWarn = { fg = p.yellow },
    DiagnosticVirtualTextInfo = { fg = p.blue },
    DiagnosticVirtualTextHint = { fg = p.cyan },
    DiagnosticUnnecessary = { fg = p.muted, undercurl = true, sp = p.muted },
    DiagnosticDeprecated = { strikethrough = true, sp = p.yellow },

    LspReferenceText = { bg = p.overlay },
    LspReferenceRead = { bg = p.overlay },
    LspReferenceWrite = { bg = p.overlay, bold = true },
    LspInlayHint = { fg = p.muted, bg = p.surface },
    LspCodeLens = { fg = p.muted },
    LspSignatureActiveParameter = { fg = p.magenta, bold = true },

    ["@lsp.type.class"] = { link = "@type" },
    ["@lsp.type.interface"] = { link = "@type" },
    ["@lsp.type.struct"] = { link = "@type" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.method"] = { link = "@function.method" },
    ["@lsp.type.macro"] = { link = "@function.macro" },
    ["@lsp.type.namespace"] = { link = "@module" },
    ["@lsp.type.parameter"] = { link = "@variable.parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.variable"] = { link = "@variable" },
    ["@lsp.type.decorator"] = { link = "@attribute" },
    ["@lsp.mod.deprecated"] = { strikethrough = true },
  }
end

return M
