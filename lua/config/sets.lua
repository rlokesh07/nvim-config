vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80" 

vim.api.nvim_set_keymap("n", "<leader>g", ":ToggleTerm<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>h", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>p", ":CompetiTest receive problem<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>r", ":CompetiTest run<CR>", { noremap = true, silent = true })

vim.keymap.set("i", "jk", "<Esc>", {noremap = true, silent = true})
vim.keymap.set("t", "jk", "<Esc>", {noremap = true, silent = true})
vim.keymap.set("v", "jk", "<Esc>", {noremap = true, silent = true})
