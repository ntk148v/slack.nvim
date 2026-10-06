" Vim entry point for the slack.nvim colorscheme.
"
" Vim's :colorscheme only sources colors/<name>.vim and never reads
" colors/<name>.lua, so without this file :colorscheme slack fails with
" E185 on Vim. The vimcompat layer supplies the Neovim-only Lua API
" (vim.o, vim.api.nvim_set_hl, vim.api.nvim_set_var,
" vim.api.nvim_create_autocmd) that slack.nvim needs, translates its 72
" @-prefixed highlight groups into groups Vim accepts, and is a complete
" no-op on Neovim.
"
" On Neovim this file may be sourced in preference to colors/slack.lua, so
" hand straight back to the Lua entry point to guarantee one behavior.

if has("nvim")
  silent! runtime colors/slack.lua
  finish
endif

if exists("syntax_on")
  syntax reset
endif
highlight clear

lua << EOF
if vim.fn.has('nvim') == 0 then
  local ok = pcall(require, 'vimcompat')
  if ok then
    require('vimcompat').setup()
  end
end

-- Never let a colorscheme raise; report instead of leaving Vim in a
-- half-loaded state.
local ok = pcall(function()
  require('slack').setup()
end)
if not ok then
  vim.cmd('echohl ErrorMsg | echomsg "slack: failed to load on Vim" | echohl None')
end
EOF

let g:colors_name = "slack"