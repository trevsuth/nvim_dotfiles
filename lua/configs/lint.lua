local lint = require "lint"

lint.linters_by_ft = {
  lua = { "selene" },
  python = { "flake8" },
}

lint.linters.luacheck.args = {}

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
  callback = function()
    lint.try_lint()
  end,
})
