# Omarchy Skeptic Theme

An [Omarchy](https://omarchy.org/) theme that ports **naysayer**, an Emacs theme
inspired by Jonathan Blow's compiler livestreams, to the whole desktop —
terminal, shell, launcher, btop, VS Code, and Neovim.

Deep teal background, warm tan text, and the muted sage/cyan syntax colors from
[naysayer-theme.el](https://github.com/nickav/naysayer-theme.el).

![Skeptic background](backgrounds/1-skeptic.jpg)

## Install

```bash
omarchy theme install https://github.com/SaifOmar/omarchy-skeptic-theme.git
```

## Neovim

Colors on Neovim come from the companion colorscheme plugin:

```lua
{
  "SaifOmar/skeptic.nvim",
  dependencies = { { "omacom/aether.nvim", branch = "v3" } },
  priority = 1000,
},
{ "LazyVim/LazyVim", opts = { colorscheme = "skeptic" } },
```

The theme also bundles the same file under `extras/` for setups
without LazyVim.

## Credits

- Based on [naysayer-theme.el](https://github.com/nickav/naysayer-theme.el)
by [nickav](https://github.com/nickav) — an Emacs theme inspired by Jonathan
Blow's compiler livestreams.
- Neovim colors built on [aether.nvim](https://github.com/omacom/aether.nvim).

## Colors

| Role | Hex |
| --- | --- |
| Background | `#062329` |
| Foreground | `#d1b897` |
| Highlight | `#0b3335` |
| Muted | `#126367` |
| Strings | `#2ec09c` |
| Comments | `#44b340` |
| Constants | `#7ad0c6` |
| Types | `#8cde94` |
| Variables | `#c1d1e3` |
| Error | `#d1685a` |
| Warning | `#ffaa00` |

## License

GPL-3.0 — same as the original naysayer-theme.el. See [LICENSE](LICENSE).
