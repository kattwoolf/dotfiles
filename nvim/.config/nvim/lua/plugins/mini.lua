return {
  {
    "nvim-mini/mini.nvim",
    version = false,
    config = function()
      require("mini.icons").setup()
      require("mini.comment").setup()
      require("mini.pairs").setup()
      require("mini.pick").setup()
      require("mini.files").setup()
      require("mini.surround").setup()
      require("mini.statusline").setup({ use_icons = false })
    end
  }
}
