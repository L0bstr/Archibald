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

> Generate font files for the theme
> ```bash
> grub-mkfont -s 24 \
> -o /boot/grub/themes/mytheme/fonts/myfont.pf2 \
> /usr/share/fonts/truetype/dejavu/DejaVuSans.ttf
> ```

> Write theme file<br>
> [Theme Manual](https://www.gnu.org/software/grub/manual/grub/html_node/Theme-file-format.html#Theme-Elements)<br>
> [Config Manual](https://www.gnu.org/software/grub/manual/grub/html_node/Simple-configuration.html)<br>
