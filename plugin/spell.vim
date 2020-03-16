let g:SpellLanglist = get(g:, 'SpellLanglist', [])

function! CycleSpellLang()
    let l:lang_index = index(g:SpellLanglist, &spelllang)
    let l:lang_index = (l:lang_index + 1) % len(g:SpellLanglist)
    let &spelllang = g:SpellLanglist[l:lang_index]
endfunction

" Cycle through spelllang list and toggle spell
function! ToggleCycleSpellLang()
    if ! &spell
        setlocal spell
    else
        let l:lang_index = index(g:SpellLanglist, &spelllang)
        let l:lang_index = (l:lang_index + 1) % len(g:SpellLanglist)
        let &spelllang = g:SpellLanglist[l:lang_index]

        if l:lang_index == 0
            setlocal nospell
        endif
    endif
endfunction

function! ToggleSpell()
    if spell
        setlocal nospell
    else
        setlocal spell
    endif
endfunction
