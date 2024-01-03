vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.lbr = true
vim.opt.shiftwidth = 2
vim.opt.expandtab = false

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.pumheight = 15
vim.opt.signcolumn = 'yes'

--Autoformatting on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
