-- Config
local mash = {
  all     = {"ctrl", "alt", "cmd"},
  split   = {"ctrl", "cmd"}
}

local centeredWindowRatios = {
  small = { w = 0.8, h = 0.8 }, -- screen width < 2560
  large = { w = 0.66, h = 0.66 } -- screen width >= 2560
}

local animationDuration = 0

-- Setup
local logger = hs.logger.new("config", "verbose")

hs.window.animationDuration = animationDuration

hs.grid.setGrid('4x2')
hs.grid.setMargins('0x0')


-- Reload config
hs.hotkey.bind(mash.all, "-", function()
  hs.reload()
  logger.i("Reloaded config")
end)

-- Resize windows
local function adjustWindow(cell)
  return function()
    local win = hs.window.focusedWindow()
    if not win then return end

    hs.grid.set(win, cell)
  end
end


-- top half
hs.hotkey.bind(mash.all, "up", adjustWindow('0,0 4x1'))

-- right half
hs.hotkey.bind(mash.all, "right", adjustWindow('2,0 2x2'))

-- bottom half
hs.hotkey.bind(mash.all, "down", adjustWindow('0,1 4x1'))

-- left half
hs.hotkey.bind(mash.all, "left", adjustWindow('0,0 2x2'))

-- top left
hs.hotkey.bind(mash.all, "q", adjustWindow('0,0 1x1'))

-- top left middle
hs.hotkey.bind(mash.all, "w", adjustWindow('1,0 1x1'))

-- top right middle
hs.hotkey.bind(mash.all, "e", adjustWindow('2,0 1x1'))

-- top right
hs.hotkey.bind(mash.all, "r", adjustWindow('3,0 1x1'))

-- bottom left

hs.hotkey.bind(mash.all, "a", adjustWindow('0,1 1x1'))
-- bottom left middle
hs.hotkey.bind(mash.all, "s", adjustWindow('1,1 1x1'))

-- bottom right middle
hs.hotkey.bind(mash.all, "d", adjustWindow('2,1 1x1'))

-- bottom right
hs.hotkey.bind(mash.all, "f", adjustWindow('3,1 1x1'))

-- far left fourth
hs.hotkey.bind(mash.split, "left", adjustWindow('0,0 1x2'))

-- far right fourth
hs.hotkey.bind(mash.split, "right", adjustWindow('3,0 1x2'))

-- fullscreen
hs.hotkey.bind(mash.all, "m", hs.grid.maximizeWindow)


