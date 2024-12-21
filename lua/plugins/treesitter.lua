return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "javascript", "html", "cpp", "python","java", "bash" },
          sync_install = false,
          auto_install = true,
          highlight = {
            enable = true,
            additional_vim_regex_highlighting = true
          },
          indent = { enable = true },
        })
    end
 }
