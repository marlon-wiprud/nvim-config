-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        denols = {
          root_dir = require("lspconfig.util").root_pattern("deno.json", "deno.jsonc"),
          init_options = {
            enable = true,
            lint = true,
            unstable = true,
          },
        },
        gopls = {
          settings = {
            gpls = {
              usePlaceholders = false,
            },
          },
        },
      },
    },
  },
}
