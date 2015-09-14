-- Thanks to https://github.com/ledbettj for the great movetounit examples
application = require "mjolnir.application"
hotkey = require "mjolnir.hotkey"
window = require "mjolnir.window"
fnutils = require "mjolnir.fnutils"
geometry = require "mjolnir.geometry"
screen = require "mjolnir.screen"


function topleft(win)
   win:movetounit(geometry.rect(0, 0, 0.5, 0.5))
end

function top(win)
   win:movetounit(geometry.rect(0, 0, 1, 0.5))
end

function topright(win)
   win:movetounit(geometry.rect(0.5, 0, 0.5, 0.5))
end

function left(win)
   win:movetounit(geometry.rect(0, 0, 0.5, 1))
end

function full(win)
   win:movetounit(geometry.rect(0, 0, 1, 1))
end

function right(win)
   win:movetounit(geometry.rect(0.5, 0, 0.5, 1))
end

function bottomleft(win)
   win:movetounit(geometry.rect(0, 0.5, 0.5, 0.5))
end

function bottom(win)
   win:movetounit(geometry.rect(0, 0.5, 1, 0.5))
end

function bottomright(win)
   win:movetounit(geometry.rect(0.5, 0.5, 0.5, 0.5))
end


hotkey.bind({"cmd", "ctrl", "alt"}, "RIGHT",
-- move the window to the right half of the screen
  function()
    right(window.focusedwindow())
  end
)

hotkey.bind({"cmd", "ctrl", "alt"}, "LEFT",
-- move the window to the left half of the screen
  function()
    left(window.focusedwindow())
  end
)


hotkey.bind({"cmd", "ctrl", "alt"}, "UP",
-- move the window to the top half of the screen
  function()
    top(window.focusedwindow())
  end
)

hotkey.bind({"cmd", "ctrl", "alt"}, "DOWN",
-- move the window to the bottom half of the screen
  function()
    bottom(window.focusedwindow())
  end
)

hotkey.bind({"cmd", "ctrl", "alt"}, "W",
-- move the window to the top right quadrant
  function()
    topright(window.focusedwindow())
  end
)


hotkey.bind({"cmd", "ctrl", "alt"}, "S",
-- move the window to the bottom right quadrant
  function()
    bottomright(window.focusedwindow())
  end
)

hotkey.bind({"cmd", "ctrl", "alt"}, "A",
-- move the window to the lower left quadrant
  function()
    bottomleft(window.focusedwindow())
  end
)

hotkey.bind({"cmd", "ctrl", "alt"}, "Q",
-- move the window to the top left quadrant
  function()
    topleft(window.focusedwindow())
  end
)

hotkey.bind({"cmd", "ctrl", "alt"}, "M",
-- maximize the current window
  function()
    full(window.focusedwindow())
  end
)
