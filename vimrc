source ~/.vim/customization/generalSettings.vim
source ~/.vim/customization/mappings/generalMappings.vim

source ~/.vim/customization/functions/generalFunctions.vim

:augroup filetype_init
:   autocmd!
:   autocmd BufRead *.cls set filetype=tex
:augroup END

" I never work with plaintex files so:
:augroup LaTeX_file_type
:    autocmd!
:    autocmd FileType plaintex set filetype=tex
:augroup END

:augroup filetype_autocmds
:   autocmd!
:   autocmd Filetype cpp,c          source ~/.vim/customization/mappings/cFamilyMappings.vim
:   autocmd Filetype cpp,c          source ~/.vim/customization/functions/cFamilyFunctions.vim
:   autocmd Filetype cpp,c          source ~/.vim/customization/cFamilySettings.vim
:   autocmd Filetype tex,bib        source ~/.vim/customization/latexSettings.vim
:   autocmd Filetype tex,bib        source ~/.vim/customization/functions/latexFunctions.vim
:   autocmd Filetype make           set list
:   autocmd Filetype make           set noexpandtab
:   autocmd Filetype css            set omnifunc=csscomplete#CompleteCSS
:augroup END

call plug#begin("~/.vim/plugins")

Plug 'octol/vim-cpp-enhanced-highlight' 		                                " cpp syntax highlighting
Plug 'lervag/vimtex' 					                                        " LaTeX support
"Plug 'jiangmiao/auto-pairs' 				                                    " Close brackets and stuff. THIS IS A REALLY ANNOYING PLUGIN
Plug 'tomtom/tcomment_vim'                                                      " Comment support
Plug 'tpope/vim-fugitive'                                                       " Git support
Plug 'molok/vim-smartusline'                                                    " Colorful status line
Plug 'scrooloose/nerdtree'
Plug 'justinmk/vim-syntax-extra'
Plug 'pangloss/vim-javascript'

call plug#end()
so ~/.vim/autoload/DoxygenToolkit.vim 					                        " Doxygnen doc support
