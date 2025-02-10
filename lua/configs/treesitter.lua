local options = {
  ensure_installed = {
    "bash",
    "json",
    "lua",
    "luadoc",
    "markdown",
    "powershell",
    "printf",
    "python",
    "r",
    "rust",
    "toml",
    "vim",
    "vimdoc",
    "yaml",
  },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)
