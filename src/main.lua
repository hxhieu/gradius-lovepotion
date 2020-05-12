require("entities.player")
local player = Player.new()
local keyPressed = ""
local dpVert = 0
local dpHort = 0

function love.load()
    Atlas = love.graphics.newImage("assets/atlas-1.png")
    Sprites = require 'assets/atlas-1'
end

function love.update(dt)
    player:setMoveX(dpHort, dt)
    player:setMoveY(dpVert, dt)
end

function love.draw()
    local i=1
    for k, _ in pairs(player) do
        love.graphics.print(k, 100, i*15)
        i = i+1
      end
    player:draw()
end

function love.gamepadpressed(joystick, button)
    keyPressed = button
    if button == "back" then
        love.event.quit()
        return
    end
    if button == "dpdown" then
        dpVert = 1
    end
    if button == "dpup" then
        dpVert = -1
    end
    if button == "dpleft" then
        dpHort = -1
    end
    if button == "dpright" then
        dpHort = 1
    end
end

function love.gamepadreleased(joystick, button)
    if button == "dpdown" then
        dpVert = 0
    end
    if button == "dpup" then
        dpVert = 0
    end
    if button == "dpleft" then
        dpHort = 0
    end
    if button == "dpright" then
        dpHort = 0
    end
end