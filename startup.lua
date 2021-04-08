local component = require("component")
local term = require("term")
local computer = require("computer")
local k = require("keyboard")
local shell = require("shell")
local ev = require("event")
local io = require("io")
g = component.gpu
i = 1
print("Preparing..")
local passkey = "2707"

repeat
    g.setResolution(27,5)
    term.clear()
    g.setForeground(0xFFFFFF)
    g.setBackground(0xFFFFFF)
    g.fill(1,1,27,5," ")
    g.setBackground(0x000000)
    g.fill(3,2,23,3," ")
    term.setCursor(7,2)
    term.write("  Welcome To")
    g.setForeground(0x0000FF)
    g.fill(6,3,17,1,"═")
    g.setForeground(0x00FFFF)
    term.setCursor(7,4)
    term.write("JJS Corporation")

    term.setCursor(1,5)
    g.setForeground(0x000000)
    g.setBackground(0xFFFFFF)
    term.setCursorBlink(false)
    local key = io.read()
    shell.execute(key)
until key == passkey

g.setResolution(160,50)
term.clear()
computer.beep()