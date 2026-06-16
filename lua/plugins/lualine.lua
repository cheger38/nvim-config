-- ~/.config/nvim/lua/plugins/lualine.lua
return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, 1, {
        function()
          return vim.bo.modified and "● UNSAVED" or ""
        end,
      })
    end,
  },
}
