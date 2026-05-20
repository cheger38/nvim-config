return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          cmd = {
            "clangd",
            "--query-driver=/usr/bin/arm-none-eabi-gcc,/usr/bin/arm-none-eabi-g++",
          },
        },
      },
    },
  },
}
