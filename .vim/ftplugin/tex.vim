set winaltkeys=no

" Stuff for vimLatex
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
let g:Tex_DefaultTargetFormat="pdf"
let g:Tex_MultipleCompileFormats="pdf"

" Compile with xelatex using \lx
if !exists('*CompileXeTex')
    function CompileXeTex()
        let oldCompileRule=g:Tex_CompileRule_pdf
        let g:Tex_CompileRule_pdf = 'xelatex -aux-directory=F:/Vim/my_latex_doc/temp --synctex=-1 -src-specials -interaction=nonstopmode $*'
        call Tex_RunLaTeX()
        let g:Tex_CompileRule_pdf=oldCompileRule
    endfunction
endif

map <Leader>lx :<C-U>call CompileXeTex()<CR>
