local utils = require "utils"

local has_eslint_config = function()
  return vim.fn.filereadable(vim.fn.getcwd() .. "/.eslintrc.json") == 1
end

return {
  "mfussenegger/nvim-lint",
  config = function()
    local lint = require "lint"

    lint.linters_by_ft = {
      javascript = { "eslint_d", "biomejs" },
      typescript = { "eslint_d", "biomejs" },
      javascriptreact = { "eslint_d", "biomejs" },
      typescriptreact = { "eslint_d", "biomejs" },
      svelte = { "eslint_d" },
      astro = { "eslint_d" },
      python = { "pylint" },
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        local linters = lint.linters_by_ft[vim.bo.filetype]
        if not linters then
          return
        end
        local eslint_index = utils.find_index(linters, "eslint_d")
        local is_eslint_ignored = false
        if eslint_index ~= nil and not has_eslint_config() then
          is_eslint_ignored = true
          table.remove(linters, eslint_index)
        end
        lint.try_lint()
        if is_eslint_ignored then
          table.insert(linters, "eslint_d")
        end
      end,
    })
  end,
  event = { "BufReadPre", "BufNewFile" },
}
