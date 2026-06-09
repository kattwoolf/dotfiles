return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = function()
      require("nvim-treesitter").install({ "c", "cpp", "rust" }):wait(300000)
    end,
    config = function()
      require("nvim-treesitter").install({ "c", "cpp", "rust" })

      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "c", "cpp", "rust" },
        callback = function()
          vim.treesitter.start()
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
  },
}
