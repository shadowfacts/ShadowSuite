-- ShadowSuite installer v0.0.2

-- Download programs

startDir = shell.dir()

print("Installing ShadowSuit v0.0.2")

shell.setDir("/")
if fs.exists("/Shadow") == false then
  shell.run("mkdir Shadow")
end

shell.setDir("/Shadow")

print("Downloading goup")
shell.run("pastebin get 4He8Fm0k goup")

print("Downloading godown")
shell.run("pastebin get TPEf9g45 godown")

print("Downloading reactor")
shell.run("pastebin get icYGYP6s reactor")


shell.setDir(startDir)

-- Add /Shadow with all of the ShadowSuite programs to the path
print("Add ShadowSuite to the path")
startupFile = fs.open("/startup", "a")
startupFile.write("shell.setPath(shell.path() ..\":/Shadow\" )")
startupFile.close()
shell.setPath(shell.path() .. ":/Shadow")

print("ShadowSuite v0.0.2 has been installed successfully!")
