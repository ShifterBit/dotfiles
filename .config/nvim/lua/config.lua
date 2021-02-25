-------------------------------------
-------- Set Generic Options --------
-------------------------------------
vim.cmd 'set number'
vim.cmd 'set relativenumber'
vim.o.completeopt = "menu,menuone,noselect"
vim.cmd "colorscheme  onebuddy"
vim.cmd 'let mapleader = ","'
vim.o.expandtab = true
vim.o.termguicolors = true
vim.o.mouse = 'a'
vim.cmd 'filetype plugin indent on'
vim.cmd 'autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"'


--------------------------------------
-------- Indentation Settings --------
--------------------------------------
vim.cmd 'autocmd FileType * set tabstop=2|set shiftwidth=2|set expandtab'
vim.cmd 'autocmd FileType typescript set tabstop=2|set shiftwidth=2|set expandtab'
vim.cmd 'autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab'
vim.cmd 'autocmd FileType c set tabstop=2|set shiftwidth=2|set expandtab'
vim.cmd 'autocmd FileType vue set tabstop=2|set shiftwidth=2|set expandtab'
vim.cmd 'autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab'
vim.cmd 'autocmd FileType rust set tabstop=4|set shiftwidth=4|set expandtab'
vim.cmd 'autocmd FileType haskell set tabstop=4|set shiftwidth=4|set expandtab'
---------------------------------
-------- Set Up Terminal --------
---------------------------------
require"toggleterm".setup{
  size = 15,
  open_mapping = [[<c-\>]],
  shade_filetypes = {},
  shade_terminals = true,
  persist_size = true,
  direction = 'horizontal'
}

-------------------------
-------- Linters --------
-------------------------

local linter_aliases = vim.g.ale_linter_aliases
linter_aliases = { 
  typescriptreact ={  'typescript', 'typescriptreact' },
  javascriptreact ={  'javascript', 'javascriptreact' },
  javascript = { 'javascript', 'javascriptreact'},
  typescript = { 'typescript', 'typescriptreact'},
}

local linter_fixers = vim.g.ale_fixers
linter_fixers = {
  javascriptreact = {'prettier', 'eslint'},
  typescriptreact = {'prettier', 'tslint'},
  cpp = {'clang-format'},
  c = {'clang-format'},
}

vim.g.ale_lint_on_save = 1
vim.g.ale_lint_on_insert_leave = 1


--------------------------
-------- NvimTree --------
--------------------------
vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_follow = 1
vim.g.nvim_tree_width = 33
