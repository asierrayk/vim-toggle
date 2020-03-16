let g:SpellLangList = get(g:, 'SpellLangList', [])

function! CycleSpellLang()
    let l:lang_index = index(g:SpellLangList, &spelllang)
    let l:lang_index = (l:lang_index + 1) % len(g:SpellLangList)
    let &spelllang = g:SpellLangList[l:lang_index]
endfunction

" Cycle through spelllang list and toggle spell
function! ToggleCycleSpellLang()
    if ! &spell
        setlocal spell
    else
        let l:lang_index = index(g:SpellLangList, &spelllang)
        let l:lang_index = (l:lang_index + 1) % len(g:SpellLangList)
        let &spelllang = g:SpellLangList[l:lang_index]

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
