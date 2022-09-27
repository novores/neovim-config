--[[ this file contains settings that are only --little-- from other plugins]]
-- Translator
vim.g['translator_target_lang'] = 'en'
-- vimtex
vim.g['vimtex-view-method'] = 'zathura'
vim.g['vimtex-compiler-method'] = 'xelatex'
-- Zenmode
local status_ok, zenmode = pcall(require, "zen-mode")
if not status_ok then
  return
end

local setup = {
  on_open = function()
   vim.cmd('Limelight')
  end,
  on_close = function()
   vim.cmd('Limelight!')
  end,
}

zenmode.setup(setup)
