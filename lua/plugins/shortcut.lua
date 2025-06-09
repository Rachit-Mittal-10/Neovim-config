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
vim.keymap.set('n', 'tt', ':terminal<CR> | i<CR>', {desc="Open the Terminal in bottom half", silent=true})
vim.keymap.set('t','<C-d>',[[<C-\><C-n>]],{desc="Close the terminal",silent=true})
-- New File Shortcut
vim.keymap.set('n', 'e', ":ene <BAR> startinsert <CR>", {desc="New File", silent=true})

-- Buffer Change commands
vim.keymap.set('n','L',":bnext<CR>",{desc="Tab Further", silent=true})
vim.keymap.set('n','H',":bprev<CR>",{desc="Tab Previous", silent=true})
vim.keymap.set('n','B',":buffers<CR>",{desc="Show Buffers",silent=true})

-- Telescope keymaps
vim.keymap.set('n','<leader>k',":Telescope keymaps<CR>",{desc="Show Keymaps",silent=true})


return {}
