local logger = require("colorscheme-installer.utils.logger")

---@class ColorschemeInstaller
---@field config ColorschemeConfig
local cs_installer = {} -- colorscheme_installer

---@class ColorschemeConfig
---@field colorschemes_path string path where the colorschemes will be configured
local config = {
  colorschemes_path = os.getenv("HOME") .. "/.config/nvim/lua/colorschemes",
}

-- default configs
cs_installer.config = config

cs_installer.setup = function()
  if vim.version().minor < 8 then
    logger.err_once("colorscheme-installer.nvim: you must use neovim 0.8 or higher")
    return
  end
  logger.info("colorscheme-installer.nvim has been setted up")
end

return cs_installer
