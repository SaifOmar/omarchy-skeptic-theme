# Omnaysayer

An [Omarchy](https://omarchy.org/) *Linux* theme that ports **naysayer**, an Emacs theme inspired by Jonathan Blow's compiler livestreams, to the whole desktop — terminal, shell, launcher, btop, and Neovim.

Deep teal background, warm tan text, and the muted sage/cyan syntax colors from naysayer-theme.el.

## Credits

- Based on [naysayer-theme.el](https://github.com/nickav/naysayer-theme.el) by [nickav](https://github.com/nickav) — an Emacs theme inspired by Jonathan Blow's compiler livestreams.
- `extras/naysayer.lua` is a port of that theme's font-lock faces to Neovim ([LazyVim](https://github.com/LazyVim/LazyVim) / aether.nvim) and is licensed GPLv3, like the original.

## Install

```bash
omarchy theme install https://github.com/SaifOmar/omarchy-naysayer-theme.git
```

## Showcase

| Component | Look |
| --- | --- |
| Shell, terminals, Neovim, btop | Unified teal/tan palette |

## Extras

### Neovim (optional)

Omarchy does not stage `.lua` files from themes installed from git repos, so the
faithful naysayer syntax mapping is bundled under `extras/`. Copy it into your
Neovim plugins folder to load it at startup:

```bash
cp ~/.config/omarchy/themes/naysayer/extras/naysayer.lua ~/.config/nvim/lua/plugins/naysayer.lua
```

It requires [LazyVim](https://github.com/LazyVim/LazyVim) (which Omarchy ships by default) and [omacom/aether.nvim](https://github.com/omacom/aether.nvim).

## Customizing

Overlay your own colors: copy `colors.toml` to a directory of the same name under `~/.config/omarchy/themes/naysayer/` and edit it, then re-apply:

```bash
omarchy theme set naysayer
```

Your own backgrounds live in `~/.config/omarchy/backgrounds/naysayer/`.

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
