<h1 align="center">Celadon for Neovim</h1>

<p align="center"><em>calm green. honest color.</em></p>

<p align="center"><a href="https://celadontheme.com">celadontheme.com</a> ·
<a href="https://github.com/celadon-theme/celadon-theme">hub repo</a></p>

---

A sage-green theme family. Four variants, same slugs as every Celadon port:

| variant | field |
|---|---|
| `celadon` | dark · medium contrast (**the default**) |
| `celadon-powder` | dark · low contrast |
| `celadon-jade` | dark · high contrast |
| `celadon-sky` | light · sage paper |

The palette is **generated, not hand-tuned** — every hex in
`lua/celadon/palette/` comes from the
[generator](https://github.com/celadon-theme/celadon-theme), gated on APCA
contrast and accent distinctness; the highlight mapping here assigns roles
and never picks a color.

## Install

[lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "celadon-theme/nvim",
  name = "celadon",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("celadon")
  end,
}
```

Each variant is its own colorscheme — `:colorscheme celadon-sky` etc.
To follow the system appearance, set `celadon` / `celadon-sky` from an
autocmd on `OptionSet background`, or use a plugin like `auto-dark-mode`.

## Options

Call `setup` before `colorscheme` (both optional):

```lua
require("celadon").setup({
  transparent = false, -- keep the terminal's background
  italics = true,      -- comments, builtins, parameters
})
```

## Integrations

Out of the box: treesitter, LSP semantic tokens + diagnostics, gitsigns,
telescope, nvim-cmp. lualine ships too — it picks the matching theme
automatically, or set it explicitly:

```lua
require("lualine").setup({ options = { theme = "celadon" } })
```

Missing a plugin? [Open an issue](../../issues) — integrations are one
small file each.

## License

[MIT](LICENSE)
