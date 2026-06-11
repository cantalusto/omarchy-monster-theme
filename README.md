# Omarchy Monster Theme

A dark, noir [Omarchy](https://omarchy.org/) theme inspired by the anime **Monster** (Naoki Urasawa) — desaturated shadows with a blood‑red accent.

![preview](preview.png)

## Palette

| Role | Hex | |
|------|-----|--|
| Background | `#15110f` | warm near‑black / penumbra |
| Foreground | `#cdc3b4` | bone / aged paper |
| Accent | `#c0392b` | blood red (borders, selection, lock) |
| Deep red | `#9e1b1b` | terminal red |

## Install

```bash
omarchy theme install https://github.com/cantalusto/omarchy-monster-theme
```

Then pick **Monster** from the theme menu, or:

```bash
omarchy theme set Monster
```

To use the boot splash (Plymouth) and SDDM login logo, go to **Style → Unlock → Monster**.

## What's themed

`colors.toml` drives terminals (Alacritty, Ghostty, Kitty, Foot, Warp), Waybar,
Walker, Mako, GTK, btop, SwayOSD, Wofi, Vencord and Neovim. Includes a custom
Walker style, a themed `hyprlock` lock screen, a red active‑window border
(`hyprland.conf`), and a Plymouth/SDDM boot logo (`unlock.png`).

## Wallpapers & credits

The `backgrounds/` folder bundles fan wallpapers of the anime **Monster** by
Naoki Urasawa, plus one generated from the series logo. All artwork is property
of its respective creators and is included here for personal, non‑commercial use
only. If you are a rights holder and want something removed, open an issue.

## License

Theme configuration files are released under the [MIT License](LICENSE).
This licence does **not** cover the bundled wallpapers (see above).
