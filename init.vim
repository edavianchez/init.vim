" Directorio de plugins
call plug#begin('~/.local/share/nvim/plugged')

" Aquí irán los plugins a instalar
Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'

call plug#end()

" Definir espacio como la tecla líder
let g:mapleader = ' '

"######################################################################################################################
" NERDTREE CONFIGURACIONES
" https://github.com/preservim/nerdtree

" Cambia el directorio actual al nodo padre actual
let g:NERDTreeChDirMode = 2

" Abrir/cerrar NERDTree con F2
map <F2> :NERDTreeToggle<CR>

" Abrir automaticamente NERDTree y dejar el cursor en este.
autocmd VimEnter * NERDTree

" * Nota: Para cambiar entre ventanas (NERDTree y tu buffer actual) presiona: Ctrl + ww

"######################################################################################################################
" AIRLINE (BARRA DE ESTADO) CONFIGURACIONES
" https://gthub.com/vim-airline/vim-airlinei

" Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#enable = 1

" Mostrar solo el nombre del archivo
let g:airline#extensions#tabline#fnamemod = ':t'

" Cargar fuente Powerline y símbolos
let g:airline_powerline_fonts = 1

" No mostrar el modo actual (ya lo muestra la barra de estado)
set noshowmode

"######################################################################################################################
" IDENTLINE CONFIGURACIONES

" No mostrar en ciertos tipos de buffers y archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

"######################################################################################################################
" CONFIGURACIONES NVIM

" Muestra los números de las líneas
set number

" Muestra el nombre del archivo en la ventana de la terminal
set title

" Permite la integración del mouse (seleccionar texto, mover el cursor)
set mouse=a

" No dividir la línea si es muy larga
set nowrap

" Resalta la línea actual
set cursorline

" Muestra la columna límite a 120 caracteres
set colorcolumn=120

" Identación a dos espacios
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround

" Inserta espacios en lugar de <Tab>s
set expandtab

" Permitir cambiar de buffers sin tener que guardarlos
set hidden

" Ignorar mayúsculas al hacer una búsqueda
set ignorecase

" No ignorar mayúsculas si la palabra a buscar contiene mayúsculas
set smartcase

" Corregir palablras usando diccionarios en inglés y español
set spelllang=en,es

" Activa true colors en la terminal
set termguicolors

" Fondo del tema: light o dark
set background=dark

" Nombre del tema
colorscheme NeoSolarized

"######################################################################################################################
" MAPPINGS NVIM

" Guardar con <líder> + s
nnoremap <leader>s :w<CR>

" Abrir el archivo init.vim con <líder> + e
nnoremap <leader>e :e $MYVIMRC<CR>

" Usar <líder> + y para copiar al portapapeles
vnoremap <leader>y "+y
nnoremap <leader>y "+y

" Usar <líder> + d para cortar al portapapeles
vnoremap <leader>d "+d
nnoremap <leader>d "+d

" Usar <líder> + p para pegar desde el portapapeles
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P

" Moverse al buffer siguiente con <líder> + l
nnoremap <leader>l :bnext<CR>

" Moverse al buffer anterior con <líder> + j
nnoremap <leader>j :bprevious<CR>

" Cerrar el buffer actual con <líder> + q
nnoremap <leader>q :bdelete<CR>

