return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        bashls = {},
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "bash-language-server", "shellcheck", "shfmt" },
    },
  },
}
