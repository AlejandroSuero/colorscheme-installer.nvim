---@brief [[
--- Provides `loggin` functions to display messages.
---@brief ]]

local M = {}

---Display error message
---@param msg string
function M.err(msg)
  vim.notify(msg, vim.log.levels.ERROR, { title = "ColorschemeInstaller" })
end

---Display error message once
---@param msg string
function M.err_once(msg)
  vim.notify_once(msg, vim.log.levels.ERROR, { title = "ColorschemeInstaller" })
end

---Display warn message
---@param msg string
function M.warn(msg)
  vim.notify(msg, vim.log.levels.WARN, { title = "ColorschemeInstaller" })
end

---Display log message
---@param msg string
function M.info(msg)
  vim.notify(msg, vim.log.levels.INFO, { title = "ColorschemeInstaller" })
end

return M
