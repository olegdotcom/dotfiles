return {
  {
    "stevearc/aerial.nvim",
    config = function()
      require("aerial").setup({
        backends = { "lsp", "treesitter", "markdown" },
        layout = {
          default_direction = "prefer_left",
          min_width = 30,
        },
        show_guides = true,
        open_automatic = true,
        attach_mode = "global",
        open_fold_levels = 99,
      })
    end,
    keys = {
      { "<leader>o", "<cmd>AerialToggle!<CR>", desc = "Toggle Outline" },
    },
  },
}
