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

---Colorscheme installer set up function
---@param opts ColorschemeConfig|nil
cs_installer.setup = function(opts)
  cs_installer.config = vim.tbl_extend("force", {}, cs_installer.config, opts or {})
  if vim.version().minor < 8 then
    logger.err_once("colorscheme-installer.nvim: you must use neovim 0.8 or higher")
    return
  end
  logger.info("colorscheme-installer.nvim has been setted up")
  logger.info(string.format("setting up colorschemes in: %s", cs_installer.config.colorschemes_path))
end

return cs_installer
