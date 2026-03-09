return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              gofumpt = true,
              usePlaceholders = true,
              completeUnimported = true,
              staticcheck = true,
              analyses = {
                unusedparams = true,
                shadow = true,
                nilness = true, -- catches nil pointers
              },
            },
          },
        },
      },
    },
  },
  -- Terraform support
  { "hashivim/vim-terraform" },
}
