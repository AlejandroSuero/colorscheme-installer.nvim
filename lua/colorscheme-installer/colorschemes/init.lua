local M = {}

---Require the colorscheme config
---@param colorscheme string
---@return table
local function get_default_config(colorscheme)
  local config = require("colorscheme-installer.colorschemes.configs." .. colorscheme)
  return config
end

---Check if colorscheme is installed
---@param colorscheme string
---@return boolean
local function is_installed(colorscheme)
  if vim.g["cs_" .. colorscheme .. "_installed"] then
    return vim.g["cs_" .. colorscheme .. "_installed"]
  end
  local colors = vim.fn.getcompletion("", "color")
  for _, color in ipairs(colors) do
    if colorscheme == color then
      vim.g["cs_" .. colorscheme .. "_installed"] = true
      return true
    end
  end
  return false
end

M.colorschemes = {
  {
    repo = "rebelot/kanagawa.nvim",
    name = "kanagawa",
    default_config = get_default_config("kanagawa"),
    installed = is_installed("kanagawa"),
  },
}

return M
