require('nvim-tree').setup {
  auto_close = true,    -- closes neovim automatically when the tree is the last **WINDOW** in the view
  hijack_cursor = true, -- hijack the cursor in the tree to put it at the start of the filename
  git = {ignore = false},
  indent_markers = true,
  view = {
    number = false,           -- show line numbers in tree disabled
    relativenumber = false,
    width = 30,               -- width of the window, can be either a number (columns) or a string in `%`
    side = "left",            -- side of the tree, can be one of 'left' | 'right' | 'top' | 'bottom'
    auto_resize = false,      -- if true the tree will resize itself after opening a file
  }
}
