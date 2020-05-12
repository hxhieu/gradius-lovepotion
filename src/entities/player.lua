Player = {}

function Player:new()
    local this = {
        x = 0,
        y = 0,
        speed = 100
    }
    function this:draw()
        love.graphics.draw(Atlas, Sprites["vic-viper-0-0"], this.x, this.y)
    end
    function this:setMoveX(value, dt)
        this.x = this.x + this.speed * value * dt
    end
    function this:setMoveY(value, dt)
        this.y = this.y + this.speed * value * dt
    end
    return this
end