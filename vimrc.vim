" Establecer espacio como tecla líder
let mapleader = " "

" -----------------------------
" CONFIGURACIÓN GENERAL
" -----------------------------
set nocompatible              " Desactiva el modo compatible con vi
set number                    " Muestra números de línea
set relativenumber            " Números relativos
set clipboard=unnamed         " Usa el portapapeles del sistema (si es compatible)
set tabstop=4                 " Tamaño de tabulación
set shiftwidth=4              " Indentación automática
set expandtab                 " Usa espacios en lugar de tabulaciones
set autoindent                " Mantiene la indentación
set smartindent               " Indentación inteligente
set cursorline                " Resalta la línea actual
set wrap                      " Ajuste de línea
set incsearch                 " Búsqueda incremental
set ignorecase                " Ignorar mayúsculas/minúsculas
set smartcase                 " Si hay mayúsculas, no ignora
set termguicolors             " Colores si terminal lo soporta
set mouse=a                   " Habilita el mouse

" -----------------------------
" GESTOR DE PLUGINS: VIM-PLUG
" -----------------------------
call plug#begin('~/.vim/plugged')

" Explorador de archivos estilo árbol
Plug 'preservim/nerdtree'

" Soporte para comentarios rápidos
Plug 'tpope/vim-commentary'

" Soporte para múltiples tipos de archivo
Plug 'sheerun/vim-polyglot'

" Barra de estado mejorada
Plug 'itchyny/lightline.vim'

" Soporte para git
Plug 'tpope/vim-fugitive'

" Búsqueda de archivos fuzzy (requiere fzf)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" -----------------------------
" ATAJOS ÚTILES
" -----------------------------

" Abrir NERDTree
nnoremap <leader>e :NERDTreeToggle<CR>

" Buscar archivos (fzf)
nnoremap <leader>f :Files<CR>

" Buscar en contenido (fzf)
nnoremap <leader>g :Rg<CR>

" Guardar con <leader>w
nnoremap <leader>w :w<CR>

" Cerrar con <leader>q
nnoremap <leader>q :q<CR>

