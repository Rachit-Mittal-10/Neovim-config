return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#BF616A", bold = true })
    vim.api.nvim_set_hl(0, "AlphaButtons", { fg = "#D08770", bold = true, italic = true })
    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
    }
    dashboard.section.buttons.val = {
        dashboard.button( "e", "New file" , ":ene <BAR> startinsert <CR>"),
        dashboard.button("SPC ff", "Find Files", ":Telescope find_files<CR>"),
        dashboard.button("SPC fg", "Live Grep",":Telescope live_grep<CR>"),
        dashboard.button("SPC nt", "Show Neotree",":Neotree toggle<CR>"),
        dashboard.button("SPC rm","Show Macros",":Telescope registers<CR>"),
        dashboard.button("tt","Show Terminal",":below split | terminal<CR>"),
        dashboard.button("q", "Quit", ":qa<CR>")
    }
    dashboard.section.header.opts.hl = "AlphaHeader"
    dashboard.section.buttons.opts.hl = "AlphaButtons"
    alpha.setup(dashboard.opts)
  end
}
