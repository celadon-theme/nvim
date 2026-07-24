-- Celadon for Neovim · calm green. honest color.
-- Palette modules under celadon/palette/ are GENERATED (from
-- celadon-theme/celadon-theme); every highlight below maps roles, never
-- picks a hex.

local M = {}

M.options = {
  transparent = false,
  italics = true,
}

function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", M.options, opts or {})
end

local MODULES = {
  "celadon.groups.editor",
  "celadon.groups.syntax",
  "celadon.groups.treesitter",
  "celadon.groups.lsp",
  "celadon.groups.plugins.gitsigns",
  "celadon.groups.plugins.telescope",
  "celadon.groups.plugins.cmp",
}

function M.load(variant)
  local p = require("celadon.palette." .. variant)
  local o = M.options

  vim.cmd.highlight("clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd.syntax("reset")
  end
  vim.o.termguicolors = true
  vim.o.background = p.appearance
  vim.g.colors_name = variant

  for _, mod in ipairs(MODULES) do
    for name, spec in pairs(require(mod).get(p, o)) do
      vim.api.nvim_set_hl(0, name, spec)
    end
  end
end

return M
