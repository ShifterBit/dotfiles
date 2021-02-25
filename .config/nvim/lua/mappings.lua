
require('helpers')

--------------------------
---------- LSP -----------
--------------------------

local lsp_opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', lsp_opts)
vim.api.nvim_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', lsp_opts)
vim.api.nvim_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', lsp_opts)
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', lsp_opts)
vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', lsp_opts)
vim.api.nvim_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', lsp_opts)
vim.api.nvim_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', lsp_opts)
vim.api.nvim_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', lsp_opts)
vim.api.nvim_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', lsp_opts)
vim.api.nvim_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', lsp_opts)
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', lsp_opts)
vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', lsp_opts)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', lsp_opts)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', lsp_opts)
vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', lsp_opts)



---------------------------------------
-------- Telescope Naviagation --------
---------------------------------------
local telescope_opts = { noremap= true, silent = true }

vim.api.nvim_set_keymap('n', 'ff', ':Telescope fd<CR>', telescope_opts)
vim.api.nvim_set_keymap('n', 'fc', ':Telescope grep_string<CR>',  telescope_opts)
vim.api.nvim_set_keymap('n', 'fd', ':Telescope lsp_document_symbols<CR>', telescope_opts)
vim.api.nvim_set_keymap('n', 'fs', ':Telescope lsp_workspace_symbols<CR>', telescope_opts)
vim.api.nvim_set_keymap('n', 'fr', ':Telescope lsp_references<CR>', telescope_opts)
vim.api.nvim_set_keymap('n', 'fgb', ':Telescope git_branches<CR>', telescope_opts)

----------------------------
-------- Completion --------
----------------------------
local completion_opts = { expr = true, silent = true, noremap = true }
vim.g.lexima_no_default_rules = true
vim.cmd('call lexima#set_default_rules()')
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', completion_opts)
vim.api.nvim_set_keymap('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', completion_opts)
vim.cmd('inoremap <silent><expr> <C-Space> compe#complete()')
vim.cmd('inoremap <silent><expr> <CR>      compe#confirm(lexima#expand("<LT>CR>", "i"))')

-----------------------
-------- NTree --------
-----------------------
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', lsp_opts)
vim.api.nvim_set_keymap('n', '<leader>r', ':NvimTreeFindFile<CR>', lsp_opts)

------------------------
------- Buffers --------
------------------------
vim.api.nvim_set_keymap('n', '<C-j>', ':bnext<CR>', lsp_opts)
vim.api.nvim_set_keymap('n', '<C-k>', ':bprev<CR>', lsp_opts)
