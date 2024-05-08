local _MODREV, _SPECREV = "scm", "-1"

rockspec_format = "3.0"
package = "colorscheme-installer"
version = _MODREV .. _SPECREV

description = {
  summary = "A collection of common configurations for Neovim's colorschemes plugins.",
  detailed = "This plugin allows for installing colorschemes.",
  homepage = "https://github.com/AlejandroSuero/colorscheme-installer.nvim",
  license = "MIT",
  labels = { "neovim", "colorscheme", "neovim-colorscheme" },
}

dependencies = {
  "lua == 5.1",
}

source = {
  url = "git://github.com/AlejandroSuero/colorscheme-installer.nvim",
}

build = {
  type = "builtin",
  copy_directories = {
    "doc",
  },
}
