return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true, -- for hidden files
        ignored = true, -- for .gitignore files
        exclude = { ".git" }, -- Exclude the .git directory from the explorer
        sources = {
          files = {
            hidden = true,
          },
        },
      },
    },
  },
}
