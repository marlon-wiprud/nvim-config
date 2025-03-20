-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.env.PATH = vim.env.PATH .. ":/usr/local/go/bin:" .. vim.fn.expand("$HOME/go/bin")

vim.env.PATH = vim.env.PATH
  .. ":/home/marlon-wiprud/.pyenv/plugins/pyenv-virtualenv/shims:/home/marlon-wiprud/.pyenv/shims"
