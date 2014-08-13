// Program to monitor a Big Reactors reactor assuming that the peripheral connection is on the back.

local reactor

while true do
  -- Clear screen
  term.setBackgroundColor(colours.black)
  term.clear()
  term.setCursorPos(1, 1)

  -- Display reactor stats
  reactor = peripheral.wrap("back")
  print("Reactor Stats")
  print("Active: " .. tostring(reactor.getActive()))
  print("Fuel Amount: " .. tostring(reactor.getFuelAmount()))
  print("Waste Amount: " .. tostring(reactor.getWasteAmount()))
  print("Fuel Temperature: " .. tostring(reactor.getFuelTemperature()))
  print("Casing Temperature: " .. tostring(reactor.getCasingTemperature()))
  print("Stored Energy: " .. tostring(reactor.getEnergyStored()))
  
  os.sleep(60)
  
end
