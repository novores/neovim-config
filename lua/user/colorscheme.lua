local colorscheme = "gruvbox-material"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
--[[ vim.cmd [[ ]]
--[[ try ]]
--[[   colorscheme gruvbox-material ]]
--[[ catch /^Vim\%((\a\+)\)\=:E185/ ]]
--[[   colorscheme default ]]
--[[   set background=dark ]]
--[[ endtry ]]
--[[ " hightlight ]]
--[[ hi Float guibg=bg guifg=fg ]]
--[[ ]]
