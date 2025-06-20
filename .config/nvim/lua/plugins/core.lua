return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato", -- options: latte, frappe, macchiato, mocha
      })
      vim.cmd.colorscheme "catppuccin"
    end,
  },
  {
    "ibhagwan/fzf-lua",
    name = "fzf-lua",
    config = function()
      require("fzf-lua").setup({
        sort_lastused = true,
      })
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    name = "toggleterm",
    config = function()
      require("toggleterm").setup({
        direction = "horizontal",
        size = 20,
        open_mapping = [[<C-t>]],
      })
    end,
  }
}
