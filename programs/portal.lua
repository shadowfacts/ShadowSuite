-- Mystcraft Portal Controller
-- NOTE: Requires my modified version of DireWolf20 Button API
-- Get it at: http://github.com/shadowfacts/ShadowSuite/button.lua

os.loadAPI("button")

bookReceptDir = "back" -- Book Receptacle Direction
monitorDir = "monitor_4" -- Monitor Direction
chestDir = "west" -- The direction facing the chest from the book receptacle

-- Peripherals
portal = peripheral.wrap(bookReceptDir)
monitor = peripheral.wrap(monitorDir)

-- Functions
function fillTable()
  button.setTable("Overworld", handleTouch, 2, 12, 3, 5)
  button.setTable("Nether", handleTouch, 15, 24, 3, 5)
  button.setTable("The End", handleTouch, 27, 37, 3, 5)
  
  button.screen()
end

function getClick()
  event, side, x, y = os.pullEvent("monitor_touch")
  button.checkxy(x, y)
end

function handleTouch(name)
  print(name)
  button.toggleButton(name)
  if name == "Nether" then
    setPortal(1)
  elseif name == "Overworld" then
    setPortal(2)
  elseif name == "The End" then
    setPortal(3)
  end
  button.toggleButton(name)
end

function setPortal(slotNum)
  portal.pullItem(chestDir, slotNum, 1)
  os.sleep(5)
  portal.pushItem(chestDir, 1, 1)
end

-- Start
monitor.clear()
fillTable()
button.heading("Portal")

while true do
  getClick()
end
