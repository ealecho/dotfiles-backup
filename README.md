# Dotfiles Backup

This repository contains my configuration files for:

- **Helix**: Text editor configuration
- **Ghostty**: Terminal emulator configuration  
- **tmux**: Terminal multiplexer configuration

## Structure

```
├── helix/          # Helix editor config files
├── ghostty/        # Ghostty terminal config
└── tmux/           # tmux configuration
```

## Installation

To restore these configs on a new system:

```bash
# Helix
cp -r helix/* ~/.config/helix/

# Ghostty
cp ghostty/config ~/.config/ghostty/

# tmux
cp tmux/tmux.conf ~/.config/tmux/
```