-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Set the Indentation shortcut
-- Visual
vim.keymap.set('v','<C-i>','>>',{desc='Indent the Selection',silent=true})
vim.keymap.set('v','<C-u>','<<',{desc='Un-indent the Selection',silent=true})
-- Normal
vim.keymap.set('n','<C-i>','>>',{desc='Indent the line',silent=true})
vim.keymap.set('n','<C-u>','<<',{desc='Un-indent the line',silent=true})

-- Set the Quit shortcut
vim.keymap.set('n','q',':qa<CR>',{desc = 'Quit',silent=true})
-- Set the terminal shortcut
vim.keymap.set('n','t',':below split | terminal<CR>',{desc="Open the Terminal in bottom half",silent=true})
--Set the New File shortcut
vim.keymap.set('n','t',":ene <BAR> startinsert <CR>",{desc="New File",silent=true})
-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- automatically check for plugin updates
  checker = { enabled = true },
})

