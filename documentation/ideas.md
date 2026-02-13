# Features

A set of configs and tools, which allows
- easier and faster setup
- dynamic theme change

# System dependencies
- JetBrainsMono NFM
- pipewire

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
- swww - background manager
  
## File structure

### Configs
```
Archibald/config/App/
├── theme_name/
│   ├── theme_config
│   ├── theme_file1
│   ├── theme_file2
│   ├── theme_file3
│   └── ...
├── another_theme_name/
│   └── ...
└── default_config

```

# Default config + theme
- [x] Grub
- [ ] Sddm
- [x] Hyprland
- [x] Kitty
- [ ] Nvim
