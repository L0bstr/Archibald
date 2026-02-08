# Features

A set of configs and tools, which allows
- easier and faster setup
- dynamic theme change

# Base system ecosystem
- Grub - bootloader
    - efibootmgr - UEFI firmware boot entrie manager
    - os-prober - operating system scanner
- SDDM - login manager
- Hyprland - tiling window manager
- Neovim - editor
- Chrome - web browser
- Rofi - launcher/window switcher/dmenu replacement
- Quickshell - Toolkit for building status bars, widgets, lockscreens, and other desktop components
- Zshell - shell

## Grub theme
```bash
/boot/grub/themes/mytheme/
├── theme.txt
├── background.png
├── fonts/
└── icons/
    └── icon.png
```

[sddm config](https://man.archlinux.org/man/sddm.1.en)<br>
