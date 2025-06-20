return {
  {
    "rebelot/heirline.nvim",
    name = "heirline",
    config = function()
      local Mode = {
        provider = function()
          local mode = vim.api.nvim_get_mode().mode
          return string.format(" %s ", mode:upper())
        end,
        hl = { fg = "black", bg = "lightblue", bold = true },
      }
      local FileName = {
        provider = function()
          local bufname = vim.api.nvim_buf_get_name(0)
          local filename = vim.fs.basename(bufname)
          return " " .. filename .. " "
        end,
        hl = { fg = "white" },
      }
      local Align = { provider = "%=" } -- pushes content to the right
      local FilePercent = {
        provider = function()
          local curr = vim.fn.line(".")
          local total = vim.fn.line("$")
          if total == 0 then return " 0% " end
          local percent = math.floor((curr / total) * 100)
          return string.format(" %d%%%% ", percent)
        end,
        hl = { fg = "white" },
      }
      require("heirline").setup {
        statusline = {
          Mode,
          FileName,
          Align,
          FilePercent,
        },
      }
    end,
  }
}
