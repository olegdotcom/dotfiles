return {
  {
    "nvim-treesitter/playground",
    cmd = {
      "TSBufEnable", "TSBufDisable", "TSBufToggle",
      "TSHighlightCapturesUnderCursor", "TSPlaygroundToggle", "TSNodeUnderCursor",
      "TSBufInfo",
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    branch = "master",
    lazy = false,
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua", "markdown", "markdown_inline", "cpp", "go",
        },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = {
          enable = true,
        },
        playground = {
          enable = true,
          updatetime = 25,
          persist_queries = false,
        },
      })
    end,
  },
  {
    "lukas-reineke/headlines.nvim",
    dependencies = "nvim-treesitter/nvim-treesitter",
    ft = { "markdown" },
    config = function()
      require("headlines").setup({
        markdown = {
          checkboxes = {
            ["unchecked"] = "☐", -- maps `markup.list.unchecked`
            ["checked"] = "☑", -- maps `markup.list.checked`
            ["partial"] = "⛝", -- optional
          },
        },
      })
    end,
  },
}
