if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

setlocal tabstop=8
setlocal nolist
setlocal nospell
setlocal nocursorline
setlocal nocursorcolumn
setlocal iskeyword+=\.,-

nnoremap <buffer><silent> <Plug>(manpager-next-keyword)     :<C-u>call manpager#find_next_keyword()<CR>
nnoremap <buffer><silent> <Plug>(manpager-previous-keyword) :<C-u>call manpager#find_previous_keyword()<CR>
nnoremap <buffer><silent> <Plug>(manpager-open-next)        :<C-u>call manpager#history#next()<CR>
nnoremap <buffer><silent> <Plug>(manpager-open-previous)    :<C-u>call manpager#history#previous()<CR>
nnoremap <buffer><silent> <Plug>(manpager-close) :<C-u>q<CR>
nnoremap <buffer><silent> <Plug>(manpager-open)             :<C-u>Man<CR>
xnoremap <buffer><silent> <Plug>(manpager-open)             :<C-u>Man <C-R>=manpager#get_visual_selection()<CR><CR>

nmap <buffer><nowait> H             <Plug>(manpager-open)
nmap <buffer><nowait> <CR>          <Plug>(manpager-open)
nmap <buffer><nowait> <C-]>         <Plug>(manpager-open)
nmap <buffer><nowait> <2-LeftMouse> <Plug>(manpager-open)
xmap <buffer><nowait> H             <Plug>(manpager-open)
xmap <buffer><nowait> <CR>          <Plug>(manpager-open)
xmap <buffer><nowait> <C-]>         <Plug>(manpager-open)
xmap <buffer><nowait> <2-LeftMouse> <Plug>(manpager-open)
nmap <buffer><nowait> <Tab>         <Plug>(manpager-open-next)
nmap <buffer><nowait> <S-Tab>       <Plug>(manpager-open-previous)

nmap <buffer><nowait> ]t            <Plug>(manpager-next-keyword)
nmap <buffer><nowait> [t            <Plug>(manpager-previous-keyword)
nmap <buffer><nowait> q             <Plug>(manpager-close)

let b:undo_ftplugin = 'setlocal iskeyword<'
