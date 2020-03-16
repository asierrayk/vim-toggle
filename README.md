vim toggle
==========
This plugin allows you to toggle or cycle through some Vim configurations.

Installation
------------

### vim-plug
```
Plug 'asierrayk/vim-toggle'
```

Example usage
-------------
``` vim
noremap <F3> :call ToggleLocList()<CR>
noremap <F4> :call ToggleQuickfix()<CR>

let g:SpellLanglist= ["en_us", "es", "en_us,es"]
nnoremap <F6> :call ToggleCycleSpellLang()<CR>
nnoremap <F7> :call ToggleSpell()<CR>
```
