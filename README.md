# Conkrner

A small Wayland setup that reserves the rightmost 1/5 of a secondary monitor for Conky, allowing windows to use the remaining 4/5.

Designed for a `2440 × 1440` monitor:

```text
┌──────────────────────────────────────────────┬──────────────┐
│                                              │              │
│              Application area                │    Conky     │
│                                              │              │
└──────────────────────────────────────────────┴──────────────┘
```

The setup uses Waybar's exclusive zone to keep windows out of the Conky area.

## Requirements

- Wayland compositor
- Waybar
- Conky

## Installation

```bash
mkdir -p ~/.config/waybar-strut ~/.config/conky

cp waybar-strut/style.css ~/.config/waybar-strut/
cp waybar-strut/config.jsonc ~/.config/waybar-strut/

cp conky/conky.conf ~/.config/conky/
cp conky/conky-launch.sh ~/.config/conky/

chmod +x ~/.config/conky/conky-launch.sh
```

The resulting layout should be:

```text
~/.config/
├── waybar-strut/
│   ├── style.css
│   └── config.jsonc
└── conky/
    ├── conky.conf
    └── conky-launch.sh
```

## Starting

```bash
waybar \
  -c ~/.config/waybar-strut/config.jsonc \
  -s ~/.config/waybar-strut/style.css
```

```bash
~/.config/conky/conky-launch.sh
```

Add both commands to your compositor's startup configuration to launch them automatically.

## Customization

The included configuration targets a `2440 × 1440` secondary monitor and reserves approximately `488 px`, or 20% of its width.

For other monitor sizes, adjust the Waybar and Conky dimensions or offsets as needed.
