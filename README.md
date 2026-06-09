
# Katt's dotfiles :3

## Selective installation
```bash
stow sway waybar swaylock mako fuzzel foot 
```

## Install all dotfiles with
```bash
stow $(find -maxdepth 1 -type d ! -name ".git")
```

## Install packages
```bash
yay -S - < arch-pkgs
```
