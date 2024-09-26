hyper = { "shift", "ctrl", "alt", "cmd" }
chrome = hs.application.find("Google Chrome")

hs.hotkey.bind(hyper, "x", function()
  chrome:selectMenuItem("Move Tab to New Window")
end)

hs.loadSpoon("SpoonInstall")

spoon.SpoonInstall:andUse("MiroWindowsManager", {
  hotkeys = {
    up = { hyper, "up" },
    right = { hyper, "right" },
    down = { hyper, "down" },
    left = { hyper, "left" },
    fullscreen = { hyper, "f" }
  }
})

spoon.SpoonInstall:andUse("AppLauncher", {
  config = {
    modifiers = hyper
  },
  hotkeys = {
    a = "Android Studio",
    c = "Google Chrome",
    n = "Notion",
    s = "Slack",
    t = "iTerm",
    v = "Visual Studio Code"
  }
})

xcode = hs.hotkey.modal.new(hyper, "x")
xcode:bind("", "d", function()
  hs.application.launchOrFocus("Xcode")
  xcode:exit()
end)

xcode:bind("", "s", function()
  hs.application.launchOrFocus("Simulator")
  xcode:exit()
end)