
" airline config
let airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='powerlineish'


" NerdTree config
let NERDTreeQuitOnOpen=1

" Deoplete
let deoplete_readme=expand('~/.vim/bundle/deoplete.nvim/README.md')
if filereadable(deoplete_readme)
    let g:deoplete#enable_at_startup = 1
    let g:deoplete#enable_auto_delimiter = 1
    let g:deoplete#force_overwrite_completefunc = 1

    " SuperTab like snippets behavior.
    imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)"
    \: pumvisible() ? "\<C-n>" : "\<TAB>"
    smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)"
    \: "\<TAB>"

    " Some convenient mappings
    imap <expr><C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
    imap <expr><C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
    imap <expr><Esc> pumvisible() ? "\<C-y>\<Esc>" : "\<Esc>"

    " deoplete-ternjs
    let g:deoplete#sources#ternjs#docs = 1

    " Enable heavy omni completion.
    if !exists('g:deoplete#sources#omni#input_patterns')
        let g:deoplete#sources#omni#input_patterns = {}
    endif
    let g:deoplete#sources#omni#input_patterns.c='[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?'
    let g:deoplete#sources#omni#input_patterns.cpp='[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
    let g:deoplete#sources#omni#input_patterns.xml='<[^>]*'
    let g:deoplete#sources#omni#input_patterns.html='<[^>]*'
    let g:deoplete#sources#omni#input_patterns.markdown='<[^>]*'
    let g:deoplete#sources#omni#input_patterns.css='^\s\+\w+\|\w+[):;]?\s\+\|[@!]'
    let g:deoplete#sources#omni#input_patterns.less='^\s\+\w+\|\w+[):;]?\s\+\|[@!]'
    let g:deoplete#sources#omni#input_patterns.javascript='[^. \t]\.\%(\h\w*\)\?'
    let g:deoplete#sources#omni#input_patterns.typescript='[^. \t]\.\%(\h\w*\)\?'
    let g:deoplete#sources#omni#input_patterns.json='[^. \t]\.\%(\h\w*\)\?'
    let g:deoplete#sources#omni#input_patterns.python='[^. *\t]\.\h\w*\|\h\w*::'
    let g:deoplete#sources#omni#input_patterns.ruby='[^. *\t]\.\w*\|\h\w*::'
    let g:deoplete#sources#omni#input_patterns.php='[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
    let g:deoplete#sources#omni#input_patterns.python3='[^. *\t]\.\h\w*\|\h\w*::'
    let g:deoplete#sources#omni#input_patterns.go='\h\w*\%.'
    let g:deoplete#sources#omni#input_patterns.perl='\h\w*->\h\w*\|\h\w*::'
    let g:deoplete#sources#omni#input_patterns.java='\%(\h\w*\|)\)\.'
endif

