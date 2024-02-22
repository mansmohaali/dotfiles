return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function ()
    require("toggleterm").setup({
      --open_mapping = [[<leader>t]], --  using  <leader>-t
      open_mapping = [[<c-t>]], -- using CTRL-t
      size = 14,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = "1",
      start_in_insert = true,
      persist_size = true,
      direction = "horizontal",
    })
  end,
}

