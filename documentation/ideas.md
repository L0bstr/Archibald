# Features

A set of configs and tools, which allows
- easier and faster setup
- more then 1 config/app save
- dynamic theme and config change

# Graphical ecosystem
- Grub - bootloader
- SDDM - login manager
- Hyprland - tiling window manager
- Kitty - terminal emulator
- Neovim - editor
- Chrome - web browser
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
- [x] Grub
- [x] Sddm
- [x] Hyprland
- [x] Kitty
- [x] Nvim
- [ ] Chrome (extra)
- [ ] Quickshell
- [ ] Global system theme and color prefrence setting

## Zsh plugins
- https://github.com/zsh-users/zsh-autosuggestions
- https://github.com/zsh-users/zsh-syntax-highlighting
- https://github.com/romkatv/powerlevel10k
