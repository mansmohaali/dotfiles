
local opt = vim.opt -- for concisness

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
--opt.t_Co = 256   -- for nvim-highlight-color

-- backsapse
opt.backspace = "indent,eol,start"

-- clipboard

opt.clipboard:append("unnamedplus")    -- same
--opt.clipboard = "unnamedplus"        -- same
--vim.cmd("set clipboard=unnamedplus") -- same

-- split windows
opt.splitright = true
opt.splitbelow = true

--
opt.iskeyword:append("-")
