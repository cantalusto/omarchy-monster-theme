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

## What applies automatically vs. manually

When you run `omarchy theme set Monster`, these apply **automatically**:

- Terminals (Alacritty, Ghostty, Kitty, Foot, Warp), Waybar, **Walker** (custom
  icon‑free launcher), Mako, GTK, btop, SwayOSD, Wofi, Vencord, Neovim
- A gradient active‑window border + red groupbar (`hyprland.conf`)
- The default `hyprlock` lock screen, recolored to the Monster palette
- **Cava**, **Steam**, and **VS Code** (built‑in *Red* theme)
- The wallpapers in `backgrounds/` (the Obluda wallpaper loads as default)

The **boot splash / login logo** (Plymouth + SDDM) is one extra menu step:
go to **Style → Unlock → Monster**.

The items in [Extras](#extras--install-manually) below are **opt‑in** — they live
in `extras/` and only take effect when you copy them into `~/.config/` yourself.

## Extras — install manually

These are not part of Omarchy's theme system, so the theme can't apply them for
you. Each command backs up your current file first, then drops in the Monster
version. Skip any you don't want.

### Custom lock screen layout (hyprlock)

The theme already colors the default `hyprlock`. This replaces the **layout** too
(single‑line clock, greeting, rotating phrase, blood‑red lock icon). It pulls its
colors from whatever Omarchy theme is active, so it stays in sync.

```bash
cp ~/.config/hypr/hyprlock.conf ~/.config/hypr/hyprlock.conf.bak
cp ~/.config/omarchy/themes/monster/extras/hyprlock.conf ~/.config/hypr/hyprlock.conf
```

The greeting uses `$USER`, so it adapts to your name automatically. The rotating
phrases are in Portuguese — edit the `shuf -e ...` line to change them.

### Shell prompt (Starship)

Powerline segments that fade from blood red (user) down to shadow (clock).

```bash
cp ~/.config/starship.toml ~/.config/starship.toml.bak
cp ~/.config/omarchy/themes/monster/extras/starship.toml ~/.config/starship.toml
```

Open a new terminal to see it.

### System info (fastfetch)

A Monster ASCII wordmark + blood‑red palette, keeping all the Omarchy system info.

```bash
cp ~/.config/fastfetch/config.jsonc ~/.config/fastfetch/config.jsonc.bak
cp ~/.config/omarchy/themes/monster/extras/fastfetch/config.jsonc ~/.config/fastfetch/config.jsonc
```

The logo path points at the installed theme folder, so it works as long as the
Monster theme is installed.

## Updating

To pull the latest version of the theme after new changes are pushed:

```bash
omarchy theme update     # git pulls every git-installed theme
omarchy theme set Monster
```

> `omarchy theme update` runs `git pull` on the theme folder, so don't edit files
> inside `~/.config/omarchy/themes/monster/` directly — your changes would block
> the pull. Tweak copies in `~/.config/` instead.

**The extras don't auto‑update.** If an extra (hyprlock, starship, fastfetch)
changed upstream and you want the new version, re‑run its `cp` command from
[Extras](#extras--install-manually) after updating.

## Recommended bar

This theme is used with **Quickshell Rise** — a modern Quickshell bar for Omarchy
by [HANCORE-linux](https://github.com/HANCORE-linux), not Waybar. It is **not**
bundled here; install it separately from its own repo:

➡️ https://github.com/HANCORE-linux/quickshell-dots

All credit for the bar goes to its author.

## Wallpapers & credits

The `backgrounds/` folder bundles fan wallpapers of the anime **Monster** by
Naoki Urasawa, plus one generated from the series logo. All artwork is property
of its respective creators and is included here for personal, non‑commercial use
only. If you are a rights holder and want something removed, open an issue.

## License

Theme configuration files are released under the [MIT License](LICENSE).
This licence does **not** cover the bundled wallpapers (see above).
