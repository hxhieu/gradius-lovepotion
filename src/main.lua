local text = "Hello World!"
--local iffy = require 'libs/iffy'
local atlas = require 'assets/atlas-1'

function love.load()
    --Test = iffy.newSpriteSheet("assets/atlas-1.png")
    Test = love.graphics.newImage("assets/atlas-1.png")  
end

function love.draw()
    --love.graphics.print(text, 400, 300)
    love.graphics.draw(Test, atlas["vic-viper-0-0"])
    love.graphics.draw(Test, atlas["vic-viper-1-0"], 0,680)
end

function love.gamepadpressed(joystick, button)
    text = button
    if button == "back" then
        love.event.quit()
        return
    end
end