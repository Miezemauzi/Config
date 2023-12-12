

vim.cmd[[
let s:latexmk = 'pdflatex -file-line-error -interaction=nonstopmode ' .
      \ '-halt-on-error -synctex=1 -output-directory={~/docs/personalwiki/compiletex/} %' 



let &l:makeprg = expand(s:latexmk) 
 


]]
-- let s:openzath = 'zathura index.pdf'

-- " Then set `makeprg` to the value of `s:latexmk`

-- "function! s:compileandpdf() abort
-- "	let &l:makeprg = expand(s:latexmk) 
-- "	let &l:makeprg = expand(s:openzath)
-- "endfunction
	
	
-- "call s:compileandpdf()
