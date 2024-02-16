return {
  "rust-lang/rust.vim",
  filetype = "rust",
  init = function ()
    vim.g.rustfmt_autosave = 1
  end
}
