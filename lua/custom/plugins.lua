local plugins={
  {
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    opts = function ()
      return require "custom.configs.formatter"
    end
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event="VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function ()
      require "custom.configs.lint"
    end
  },
  {
    "neovim/nvim-lspconfig",
    config=function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts={
      ensure_installed = {
        "prettier",
        "clangd",
        "clang-format",
        "eslint-lsp",
        "typescript-language-server",
      }
    }
  }
}
return plugins
