# Changelog

## 2026-04-02

### Fixed Markdown preview startup

- Moved `set nocompatible` and `filetype off` to the top of `vimrc` so Vim
  loads the config cleanly.
- Added Markdown Preview defaults:
  - `let g:mkdp_auto_start = 0`
  - `let g:mkdp_auto_close = 1`
  - `let g:mkdp_filetypes = ['markdown']`
- Added a Markdown-only mapping:
  - `<leader>mp` → `:MarkdownPreviewToggle<CR>`
- Updated `markdown-preview.nvim` runtime selection to prefer the Node
  backend when `app/node_modules/tslib` is present, because the prebuilt
  macOS binary exited immediately on this setup.

### Result

- `:MarkdownPreviewToggle` now starts successfully.
- The preview backend becomes active instead of silently doing nothing.
- The fix was committed and pushed to `origin/master`.
