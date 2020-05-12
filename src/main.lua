local text = "Hello World!"
local iffy = require 'libs/iffy'

function love.load()
    Test = iffy.newSpriteSheet("assets/atlas-1.png")
end

function love.draw()
    --love.graphics.print(text, 400, 300)
    iffy.drawSprite("vic-viper-0-0")
end

function love.gamepadpressed(joystick, button)
    text = button
    if button == "back" then
        love.event.quit()
        return
    end
end