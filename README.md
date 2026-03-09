# Nvim: Platform Security & Go Edition

This is a highly opinionated, performance-tuned Neovim configuration built on top of [LazyVim](https://github.com/LazyVim/LazyVim). It is designed explicitly for Senior Platform Security engineering, heavy Go development, and high-speed, keyboard-driven navigation.

## Design Philosophy
* **Execution First:** Zero mouse dependency. Navigation relies on Harpoon and Telescope, bypassing standard file-tree crutches.
* **Shift-Left Security:** The Go LSP (`gopls`) is tuned to act as an in-buffer security auditor, executing `nilness`, `unusedparams`, and `shadow` checks in real-time.
* **Thermal Efficiency:** Optimized for Intel architecture. Heavy UI elements (like persistent file trees and status lines) are disabled or minimized to prevent thermal throttling during large workspace indexing.

## Core Architecture
* **Package Manager:** `lazy.nvim`
* **Colorscheme:** `tokyonight-moon` (Loaded immediately on startup for zero flicker)
* **LSP / Linters:** `gopls`, `terraform-ls`
* **Testing:** `neotest` directly integrated for surgical Go test execution.

## Primary Keymaps
The leader key is mapped to `<Space>`.

### Navigation (The "Prime" Flow)
| Keybind | Action | Description |
| :--- | :--- | :--- |
| `<leader>pv` | `Netrw` | Drops into the native file explorer (Anti-tree workflow). |
| `<leader>pf` | `Telescope` | Find files from root. |
| `<leader>ps` | `Telescope Grep` | Project-wide string search. |
| `<C-h/j/k/l>` | `Harpoon` | Instant switching between the 4 pinned active buffers. |
| `<C-d> / <C-u>` | `Half-page jump` | Centered vertical traversal (`zz` applied) to eliminate eye strain. |

### Execution & Refactoring
| Keybind | Action | Description |
| :--- | :--- | :--- |
| `<leader>gt` | `Neotest` | Runs the Go test nearest to the cursor. |
| `<leader>p` | `"_dP` | The "Greatest Remap": Paste over highlighted text without losing the yank buffer. |
| `<leader>s` | `%s/...` | Instantly setup a global search-and-replace for the word under the cursor. |
| `J / K` (Visual) | `Move Block` | Shifts entire highlighted blocks of code up or down while maintaining indent. |

## Installation
```bash
# Backup existing config
mv ~/.config/nvim ~/.config/nvim.bak

# Clone this repository
git clone [https://github.com/YOUR_USERNAME/nvim-config.git](https://github.com/YOUR_USERNAME/nvim-config.git) ~/.config/nvim

# Boot Neovim (Lazy will automatically pull binaries)
nvim
