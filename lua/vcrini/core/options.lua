local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance

opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
opt.undolevels = 10001

opt.scrolloff = 8
-- setting python version for venv
-- vim.g.python3_host_prog = os.getenv("HOME") .. "/.pyenv/versions/3.12.0/bin/python3.12"
-- vim.g.python3_host_prog = os.getenv("HOME") .. "/venv/gitpython/bin/python"
vim.g.python3_host_prog = "/usr/local/bin/python3.9"
-- vim.opt.conceallevel = 2
-- opt.wildmode = "longest,list"
opt.wildmode = "longest,list,full"
vim.g.tmux_navigator_disable_when_zoomed = 1
vim.api.nvim_cmd({
  cmd = "colorscheme",
  args = { "retrobox" },
}, {})
