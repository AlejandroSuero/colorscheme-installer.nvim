require("plenary.reload").reload_module("colorscheme-installer", true)
local csi = require("colorscheme-installer")
local eq = assert.are.same

describe("setup", function()
  it("setup with default configs", function()
    local expected = {
      colorschemes_path = os.getenv("HOME") .. "/.config/nvim/lua/colorschemes",
    }
    csi.setup()
    eq(csi.config, expected)
  end)

  it("setup with custom configs", function()
    local expected = {
      colorschemes_path = os.getenv("HOME") .. "/.config/nvim/lua/custom/plugins/colorschemes",
    }
    csi.setup(expected)
    eq(csi.config, expected)
  end)
end)
