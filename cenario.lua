Cenario = {}

function Cenario:load()
    self.width = love.graphics.getWidth()
    self.height = 25
    self.x = 0
    self.y = 500 
end

function Cenario:update(dt)

end

function Cenario:draw()
    love.graphics.line(self.x, self.y, self.width, self.y)
end