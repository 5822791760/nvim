local ok, _ = pcall(require, 'formatter.util')
if ok then
  local util = require "formatter.util"
end

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
local ok2, _ = pcall(require, 'formatter')
if ok2 then
  require("formatter").setup {
    -- Enable or disable logging
    logging = true,
    -- Set the log level
    log_level = vim.log.levels.WARN,
    -- All formatter configurations are opt-in
    filetype = {
      -- Formatter configurations for filetype "lua" go here
      -- and will be executed in order
      -- python = {
      --           -- "formatter.filetypes.lua" defines default configurations for the
      --           -- "lua" filetype
      --           require("formatter.filetypes.python").autopep8,
      -- }
    }
  }
end
