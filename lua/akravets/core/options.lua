local opt = vim.opt

-- Line Numbers
opt.number = true
opt.relativenumber = true
opt.fillchars = { eob = ' ' }

-- Tab Spacing
opt.tabstop = 2
opt.shiftwidth = 2

-- Line Settings
opt.wrap = true

-- Searching
opt.ignorecase = true
opt.smartcase = true

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Split Windows
opt.splitright = true
opt.splitbelow = true

opt.scrolloff = 10
