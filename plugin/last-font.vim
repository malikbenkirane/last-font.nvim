" Title:       Last Font
" Description: Remember your last call to :set guifont='(font)'
" Maintainer:  malikbenkirane <https://github.com/malikbenkirane>

" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if exists("g:loaded_lastfont")
  finish
endif
let g:loaded_lastfont = 1

lua require('last-font').setup()
