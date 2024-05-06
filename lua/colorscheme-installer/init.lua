local logger = require("colorscheme-installer.utils.logger")

---@class ColorschemeInstaller
---@field config ColorschemeConfig
---@field _cs_configs table
local cs_installer = {} -- colorscheme_installer

---@class ColorschemeConfig
---@field colorschemes_path string path where the colorschemes will be configured
local config = {
  colorschemes_path = os.getenv("HOME") .. "/.config/nvim/lua/colorschemes",
}

-- default config
cs_installer.config = config

-- defautl colorschemes configs
cs_installer._cs_configs = require("colorscheme-installer.colorschemes").colorschemes

---Colorscheme installer set up function
---@param opts ColorschemeConfig|nil
cs_installer.setup = function(opts)
  cs_installer.config = vim.tbl_extend("force", {}, cs_installer.config, opts or {})
  if vim.version().minor < 9 then
    logger.err_once("colorscheme-installer.nvim: you must use neovim 0.9.0 or higher")
    return
  end
end

return cs_installer
