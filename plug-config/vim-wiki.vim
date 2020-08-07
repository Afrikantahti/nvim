" VimWiki
  let g:vimwiki_key_mappings =
    \ {
    \   'all_maps': 1,
    \   'global': 1,
    \   'headers': 1,
    \   'text_objs': 1,
    \   'table_format': 1,
    \   'table_mappings': 1,
    \   'lists': 1,
    \   'links': 1,
    \   'html': 1,
    \   'mouse': 1,
    \ }

" Filetypes enabled for
let g:vimwiki_global_ext = 0
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
let g:vimwiki_filetypes = ['markdown']
let g:vimwiki_root = '~/Nextcloud/vimwiki'
let g:vimwiki_list = [
    \{
        \'path': '~/Nextcloud/vimwiki',
        \ 'syntax': 'markdown', 'ext': '.md',
        \ 'auto_tags': 1,
        \ 'auto_diary_index': 1,
        \ 'auto_generate_links': 1,
        \ 'auto_generate_tags': 1
    \},
    \{
        \'path': '~/Nextcloud/vimwiki/work',
        \ 'syntax': 'markdown', 'ext': '.md',
        \ 'auto_tags': 1,
        \ 'auto_diary_index': 1,
        \ 'auto_generate_links': 1,
        \ 'auto_generate_tags': 1
    \}]

" fix tab autocomplete, fix but table tab movement broken
let g:vimwiki_table_mappings = 0

" future version ???
let g:vimwiki_tab_key = '<F7>'
let g:vimwiki_shift_tab_key = '<F8>'

autocmd FileType markdown setlocal textwidth=80 formatoptions+=t

" ~~~~~ Diary Template
autocmd FileType markdown inoremap <leader>diary #<Space><++><CR><CR><++><CR><CR>##<Space>DevLog<CR><CR><++><CR><CR><Esc>gg
" ~~~~~ This is for a vim wiki note template
autocmd Filetype markdown inoremap <leader>note #<Space>Explain<CR><CR><CR><CR>#<Space>Documentation<CR><CR><++><CR><CR>#<Space>Code<CR><CR>```<++><CR><CR>#<Space> Documentation<CR><++><CR><CR>```<CR><CR><Esc>gg2ji
autocmd Filetype markdown inoremap <leader>shnote #<Space>Explain<CR><CR><CR><CR>```sh<CR><CR><++><CR><CR>```<CR><CR>#<Space>Documentation<CR><CR><++><CR><CR><Esc>gg2ji
autocmd Filetype markdown inoremap <leader>sh ```sh<CR><CR><CR><CR>```<Esc>2ki
" ~~~~~ This inputs a NOW() timestamp
autocmd Filetype markdown inoremap <leader>now <C-r>=strftime('%F')<CR>
autocmd Filetype markdown inoremap <leader>day #<space><C-r>=strftime('%F')<CR><CR>#<space>Morning Journal<CR><CR>#<space>Thoughts<CR><CR>#<space>Workspace<CR><CR>#<space>Resonance calendar<CR><CR>#<space>Evening Reflection 
au BufEnter diary.md :VimwikiDiaryGenerateLinks
au BufEnter index.md :VimwikiGenerateLinks :VimwikiGenerateTagLinks
au BufEnter diary.wiki :VimwikiDiaryGenerateLink
"map <leader>mt :VimwikiMakeDiaryNote<CR>
"map <leader>mn :VimwikiMakeTomorrowDiaryNote<CR>

let g:vimwiki_diary_months = {
      \ 1: 'January', 2: 'February', 3: 'March',
      \ 4: 'April', 5: 'May', 6: 'June',
      \ 7: 'July', 8: 'August', 9: 'September',
      \ 10: 'October', 11: 'November', 12: 'December'
      \ }

let g:vim_markdown_folding_style_pythonic = 1

au BufRead,BufNewFile *.md setlocal textwidth=80

