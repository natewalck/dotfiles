local switcher = hs.window.switcher.new()
local switcher_browsers = hs.window.switcher.new{'Brave Browser'}

hs.hotkey.bind("alt","tab", 'Next window',function()switcher:next()end)
hs.hotkey.bind('alt-shift','tab','Prev window',function()switcher:previous()end)

local browsa = {'alt', 'ctrl'}
local browsalt = {'alt', 'shift','ctrl'}

hs.hotkey.bind(browsa,'tab','Next browser window',function()switcher_browsers:next()end)
hs.hotkey.bind(browsalt,'tab','Prev browser window',function()switcher_browsers:previous()end)
