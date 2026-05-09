return {
  {
    "Aasim-A/scrollEOF.nvim",
    event = { "CursorMoved", "WinScrolled" },
    opts = {
      insert_mode = false,
      floating = false,
      disabled_filetypes = {
        "terminal",
        "lazy",
        "mason",
        "neo-tree",
        "TelescopePrompt",
        "snacks_dashboard",
      },
      disabled_modes = { "t", "nt" },
    },
  },
}
