# Windflower Colorscheme for Vim/Neovim

A beautiful dark terminal vim colorscheme derived from the classic [RailsCasts](http://railscasts.com) TextMate theme, modernized for both vim 8+ and neovim with true color support.

## Features

✨ **Modern Compatibility**: Works seamlessly with both traditional vim and neovim  
🎨 **True Color Support**: Automatically detects and uses 24-bit colors when available  
🔄 **Fallback Support**: Gracefully falls back to 256-color terminal mode  
🌙 **Dark Theme**: Carefully crafted dark colorscheme easy on the eyes  
⚡ **Optimized**: Language-specific highlighting for Ruby, Python, C/C++, HTML/XML  
📦 **Zero Dependencies**: No external dependencies or requirements

## Screenshots

The colorscheme provides consistent, readable syntax highlighting across different file types:

- **Comments**: Warm brown (`#af875f`) that's visible but not distracting
- **Strings**: Soft green (`#87af5f`) for easy string identification
- **Keywords**: Orange (`#af5f00`) for language keywords and statements
- **Functions**: Bright yellow (`#ffd75f`) to make function calls stand out
- **Types**: Coral (`#d75f5f`) for type definitions and declarations
- **Numbers/Booleans**: Light blue (`#87afd7`) for literals

## Installation

### Using vim-plug (Recommended)

Add this line to your `.vimrc` or `init.vim`:

```vim
Plug 'mushanyoung/vim-windflower'
```

Then run `:PlugInstall` in vim.

### Manual Installation

1. Download the `windflower.vim` file
2. Place it in your `~/.vim/colors/` directory (create if it doesn't exist)
3. For neovim: place it in `~/.config/nvim/colors/`

## Usage

Add this line to your `.vimrc` or `init.vim`:

```vim
colorscheme windflower
```

### Enabling True Colors (Recommended)

For the best experience with modern terminals that support 24-bit colors, add this to your configuration:

```vim
" Enable true color support
if has('termguicolors')
  set termguicolors
endif

colorscheme windflower
```

### Terminal Compatibility

Windflower works with:

- ✅ **True Color Terminals**: iTerm2, Alacritty, Kitty, Wezterm, modern Terminal.app
- ✅ **256-Color Terminals**: Most modern terminal emulators
- ✅ **Terminal Multiplexers**: tmux (with proper configuration), screen
- ✅ **SSH Sessions**: Works over SSH when terminal supports it

For tmux users, ensure true color forwarding:

```bash
# Add to ~/.tmux.conf
set -g default-terminal "screen-256color"
set -ag terminal-overrides ",xterm-256color:RGB"
```

## Language Support

Windflower includes optimized highlighting for:

- **Ruby**: Enhanced class, method, and variable highlighting
- **Python**: Proper exception and docstring support
- **C/C++**: STL namespace and template highlighting
- **HTML/XML**: Tag and attribute highlighting
- **JavaScript/TypeScript**: Modern syntax support
- **Markdown**: Header and emphasis styling
- **Git Diffs**: Clear addition/deletion highlighting

## Color Palette

| Element    | Terminal Color | True Color | Usage             |
| ---------- | -------------- | ---------- | ----------------- |
| Background | `234`          | `#1c1c1c`  | Editor background |
| Foreground | `254`          | `#e4e4e4`  | Normal text       |
| Comments   | `137`          | `#af875f`  | Code comments     |
| Strings    | `107`          | `#87af5f`  | String literals   |
| Keywords   | `130`          | `#af5f00`  | Language keywords |
| Functions  | `221`          | `#ffd75f`  | Function names    |
| Types      | `167`          | `#d75f5f`  | Type definitions  |
| Numbers    | `110`          | `#87afd7`  | Numeric literals  |
