-- Disables automatic commenting of new lines
vim.cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

-- Autosave on insert mode leave or nvim exit
vim.cmd [[au FocusLost,InsertLeave * if &readonly==0 && filereadable(bufname('%')) | silent update | endif]]

-- Display colorcolumn onlly in active buffer
vim.cmd [[
au FocusGained,BufEnter,WinEnter * set cursorline
au FocusLost,BufLeave,WinLeave   * set nocursorline
]]

-- Disables relative number in input mode or if nvim is out of focus
vim.cmd [[
au FocusGained,BufEnter,InsertLeave * if &nu | set rnu   | endif
au FocusLost,BufLeave,InsertEnter   * if &nu | set nornu | endif
]]

vim.cmd [[
au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
]]
