return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      denols = {
        root_dir = require("lspconfig.util").root_pattern("deno.json", "deno.jsonc"),
        init_options = {
          lint = true,
          unstable = true,
        },
      },
      tsserver = {
        root_dir = function(fname)
          return not require("lspconfig.util").root_pattern("deno.json", "deno.jsonc")(fname)
        end,
      },
      -- denols = {
      --   root_dir = require("lspconfig.util").root_pattern("deno.json", "deno.jsonc"),
      --   settings = {
      --     deno = {
      --       enable = true,
      --     },
      --   },
      -- },
    },
    -- setup = {
    --   denols = function(_, opts)
    --     local util = require("lspconfig.util")
    --     local is_deno = util.root_pattern("deno.json", "deno.jsonc")
    --     opts.root_dir = is_deno
    --     opts.on_attach = function(client, bufnr)
    --       -- Disable tsserver if Deno is detected
    --       -- if client.name == "denols" then
    --       --   require("lspconfig").tsserver.manager.try_add_wrapper(bufnr)
    --       -- end
    --     end
    --   end,
    -- },
  },
}
