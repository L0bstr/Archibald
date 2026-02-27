# Features

A set of configs and tools, which allows
- easier and faster setup
- more then 1 config/app save
- dynamic theme and config change

# Graphical ecosystem
- Plymouth - bootslpash
- Grub - bootloader
- SDDM - login manager
- Hyprland - tiling window manager
- swaylock - screen lock
- Kitty - terminal emulator
- Neovim - editor
- Chrome - web browser
- Dolphin - file manager
- Rofi - launcher/window switcher/dmenu replacement (might be replaced by QuickShell)
- Quickshell - toolkit for building status bars, widgets, lockscreens, and other desktop components
- Zshell - shell
- swww - background manager
  
## File structure

### Configs/Themes
```
Archibald/config/App/
├── theme_name/
│   ├── config.conf
│   ├── theme_file1
│   ├── theme_file2
│   ├── theme_file3
│   ├── helper.sh
│   └── ...
├── another_theme_name/
│   └── ...
└── apply_theme.sh
```

## Default config + theme
- [ ] Plymouth
- [x] Grub
- [x] Sddm
- [x] Hyprland
- [ ] swaylock
- [x] Kitty
- [x] Nvim
- [ ] Quickshell
- [ ] Dolphin
