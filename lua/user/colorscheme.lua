vim.cmd [[
try
  colorscheme gruvbox
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry

" hightlight
hi EndOfBuffer guibg=bg guifg=bg
hi NvimTreeWinSeparator guibg=#1d2021 guifg=#1d2021
hi NvimTreeNormal guibg=#1d2021 guifg=none
hi NvimTreeEndofBuffer guibg=#1d2021 guifg=bg
hi BufferLineFill guibg=#1d2021 guifg=bg
hi BufferLineBufferSelected guibg=bg guifg=fg
hi BufferLineBuffer guibg=bg guifg=fg
hi SignColumn guibg=bg guifg=fg
hi WhichkeyFloat guibg=bg guifg=fg
hi Float guibg=bg guifg=fg
]]
