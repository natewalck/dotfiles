-- Config
local mash = {
  all     = {"ctrl", "alt", "cmd"},
  split   = {"ctrl", "cmd"}
}

local animationDuration = 0

-- Setup
local logger = hs.logger.new("config", "verbose")

hs.window.animationDuration = animationDuration

hs.grid.setGrid('5x2')
hs.grid.setMargins('0x0')


-- Reload config
hs.hotkey.bind(mash.split, "-", function()
  hs.reload()
  logger.i("Reloaded config")
end)

local function adjustWindowResAware(large, small)
  return function()
    local win = hs.window.focusedWindow()
    if not win then return end
    local screen = win:screen()
    if (screen:frame().w > 1920)
    then
      -- Use Large screen #s
      hs.grid.setGrid('5x2')
      hs.grid.set(win, large)
    else
      -- Use Small screen  #s
      hs.grid.setGrid('4x2')
      hs.grid.set(win, small)
    end
  end
end

-- top half
hs.hotkey.bind(mash.all, "up", adjustWindowResAware('0,0 5x1', '0,0 4x1'))

-- right half
hs.hotkey.bind(mash.all, "right", adjustWindowResAware('3,0 2x2', '2,0 2x2'))

-- bottom half
hs.hotkey.bind(mash.all, "down", adjustWindowResAware('0,1 5x1', '0,1 4x1'))

-- left half
hs.hotkey.bind(mash.all, "left", adjustWindowResAware('0,0 2x2', '0,0 2x2'))

-- middle
hs.hotkey.bind(mash.all, "n", adjustWindowResAware('1,0 3x2', '1,0 2x2'))

-- top left
hs.hotkey.bind(mash.all, "q", adjustWindowResAware('0,0 2x1', '0,0 2x1'))

-- top right
hs.hotkey.bind(mash.all, "w", adjustWindowResAware('3,0 2x1', '2,0 2x1'))

-- bottom left

hs.hotkey.bind(mash.all, "a", adjustWindowResAware('0,1 2x1', '0,1 2x1'))

-- bottom right
hs.hotkey.bind(mash.all, "s", adjustWindowResAware('3,1 2x1', '2,1 2x1'))


-- fullscreen
hs.hotkey.bind(mash.all, "m", hs.grid.maximizeWindow)

-- Show grid for dynamic arrangement
hs.hotkey.bind(mash.all, "x", hs.grid.show)
