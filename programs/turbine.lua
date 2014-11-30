-- Turbine
-- A program to actively monitor a Big Reactors Steam Turbine and make sure that the turbine is always running at optimal levels.
-- Author: Shadowfacts
-- http://github.com/shadowfacts/ShadowSuite/programs/turbine.lua

while true do
  local turbine = peripheral.wrap("bottom")
  
  if turbine.getRotorSpeed() > 1850 then
    turbine.setInductorEngaged(true)
    turbine.setActive(false)
  end
  if turbine.getRotorSpeed() < 1750 then
    turbine.setInductorEngaged(false)
    turbine.setActive(true)
  end
  
  if turbine.getRotorSpeed() > 1761 and turbine.getRotorSpeed() < 1849 then
    turbine.setInductorEngaged(true)
    turbine.setActive(true)
  end
  
  os.sleep(20)
  
end
