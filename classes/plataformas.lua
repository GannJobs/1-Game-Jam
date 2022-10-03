Plataformas = Classe:extend()

function Plataformas:new()
    self.width = 200
    self.height = 70
    self.x = love.graphics.getWidth() + self.width + 100
    self.y = 450
    self.Vx = 300
end

function Plataformas:update(dt)
    self.x = self.x - self.Vx * dt
end

function Plataformas:draw()
    love.graphics.rectangle("line", self.x, self.y, self.width, self.height)
end
