local csi = require("colorscheme-installer")

local same = assert.are.same
local not_true = assert.is_not_true

---Require the colorscheme config
---@param colorscheme string
---@return table
local function get_default_config(colorscheme)
  local config = require("colorscheme-installer.colorschemes.configs." .. colorscheme)
  return config
end

describe("setup", function()
  it("setup with default configs", function()
    local expected = {
      colorschemes_path = os.getenv("HOME") .. "/.config/nvim/lua/colorschemes",
    }
    csi.setup()
    same(csi.config, expected)
  end)

  it("setup with custom configs", function()
    local expected = {
      colorschemes_path = os.getenv("HOME") .. "/.config/nvim/lua/custom/plugins/colorschemes",
    }
    csi.setup(expected)
    same(csi.config, expected)
  end)
end)

describe("colorschemes", function()
  it("has colorschemes configs", function()
    assert.are_not.same(csi._cs_configs, nil)
  end)

  it("has colorscheme config for `kanagawa`", function()
    local expected = get_default_config("kanagawa")

    for _, config in ipairs(csi._cs_configs) do
      if config.name == "kanagawa" then
        same(config.default_config, expected)
      end
    end
  end)

  it("has `kanagawa` uninstalled", function()
    for _, config in ipairs(csi._cs_configs) do
      if config.name == "kanagawa" then
        not_true(config.installed)
      end
    end
  end)
end)
