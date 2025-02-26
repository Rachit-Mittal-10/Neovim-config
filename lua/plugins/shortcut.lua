vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Indentation Shortcuts
vim.keymap.set('v', '<C-i>', '>>', {desc='Indent the Selection', silent=true})
vim.keymap.set('v', '<C-u>', '<<', {desc='Un-indent the Selection', silent=true})
vim.keymap.set('n', '<C-i>', '>>', {desc='Indent the line', silent=true})
vim.keymap.set('n', '<C-u>', '<<', {desc='Un-indent the line', silent=true})

-- Quit Shortcut
vim.keymap.set('n', 'q', ':qa<CR>', {desc = 'Quit', silent=true})

-- Terminal Shortcut
vim.keymap.set('n', 'tt', ':below split | terminal<CR>', {desc="Open the Terminal in bottom half", silent=true})

-- New File Shortcut
vim.keymap.set('n', 'e', ":ene <BAR> startinsert <CR>", {desc="New File", silent=true})

-- Tab shortcut
vim.keymap.set('n','<C-Tab>',":bnext<CR>",{desc="Tab Further", silent=true})
vim.keymap.set('n','<S-Tab>',":bprev<CR>",{desc="Tab Previous", silent=true})

return {}
