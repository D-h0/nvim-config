local M = {}
-- latex.lua (or custom plugins file)

-- Ensure filetype plugin and syntax are enabled
vim.cmd 'filetype plugin indent on'
vim.cmd 'syntax enable'

-- Set VimTeX to use Zathura as the viewer
vim.g.vimtex_view_method = 'zathura'

-- Optional: You could also use the generic viewer interface instead of zathura
-- vim.g.vimtex_view_general_viewer = 'okular'
-- vim.g.vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

-- Use latexmk as the compiler backend (recommended)
vim.g.vimtex_compiler_method = 'latexmk'

-- Change the local leader key for VimTeX mappings (default is "\")
vim.g.maplocalleader = ','

return M
