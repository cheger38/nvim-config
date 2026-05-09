return {
  {
    "Mofiqul/vscode.nvim",
    config = function()
      vim.o.background = "dark"

      local c = require("vscode.colors").get_colors()
      require("vscode").setup({
        transparent = true,
        italic_inlayhints = true,
        underline_links = true,
        disable_nvimtree_bg = true,
        terminal_colors = true,
        color_overrides = {
          vscLineNumber = "#7A7A7A",
        },
        group_overrides = {
          -- Change highlight for python keywords
          ["@keyword.operator.python"] = { fg = c.vscPink },
          ["@keyword.python"] = { fg = c.vscPink },

          -- Custom highlight for c++ 'new' and 'delete'
          ["@keyword.memory.cpp"] = { fg = c.vscPink },
        },
      })

      vim.cmd.colorscheme("vscode")

      vim.api.nvim_set_hl(0, "RainbowDelimiterYellow", { fg = c.vscYellowOrange })
      vim.api.nvim_set_hl(0, "RainbowDelimiterRed", { fg = c.vscPink })
      vim.api.nvim_set_hl(0, "RainbowDelimiterBlue", { fg = c.vscMediumBlue })
    end,
  },
  {
    "hiphish/rainbow-delimiters.nvim",
    config = function()
      ---@type rainbow_delimiters.config
      vim.g.rainbow_delimiters = {
        strategy = {
          [""] = "rainbow-delimiters.strategy.global",
          vim = "rainbow-delimiters.strategy.local",
        },
        query = {
          [""] = "rainbow-delimiters",
          lua = "rainbow-blocks",
        },
        priority = {
          [""] = 110,
          lua = 210,
        },
        highlight = {
          "RainbowDelimiterYellow",
          "RainbowDelimiterRed",
          "RainbowDelimiterBlue",
        },
      }
    end,
  },
}
