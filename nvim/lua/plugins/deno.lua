return {
  recommended = function()
    return LazyVim.extras.wants({
      root = {
        "deno.json",
        "deno.jsonc",
      },
    })
  end,
  { import = "lazyvim.plugins.extras.lang.typescript" },
  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "deno" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        denols = {
          settings = {
            deno = {
              enable = true,
              lint = true,
              unstable = true,
            },
          },
        },
      },
    },
  },
}
