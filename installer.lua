-- ShadowSuite installer v0.0.3
-- Download programs
version = "0.0.3"


startDir = shell.dir()

print("Installing ShadowSuit v" .. version)

shell.setDir("/")
if fs.exists("/Shadow") == false then
  shell.run("mkdir Shadow")
end

shell.setDir("/Shadow")

print("Downloading reactor")
shell.run("pastebin get icYGYP6s reactor")

print("Downloading turbine")
shell.run("pastebin get cuXJSU6c turbine")


shell.setDir(startDir)

-- Add /Shadow with all of the ShadowSuite programs to the path
print("Add ShadowSuite to the path")
startupFile = fs.open("/startup", "a")
startupFile.write("shell.setPath(shell.path() ..\":/Shadow\" )")
startupFile.close()
shell.setPath(shell.path() .. ":/Shadow")

print("ShadowSuite v" .. version .. " has been installed successfully!")
