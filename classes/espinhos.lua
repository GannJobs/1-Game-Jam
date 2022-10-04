Espinhos = Classe:extend()

function Espinhos:new()
    self.img = love.graphics.newImage("imagens/T.png")
    self.width = 50
    self.height = 50
    self.x = love.graphics.getWidth() + self.width
    self.y = 450
    self.Vx = 300
end

function Espinhos:update(dt)
    self.x = self.x - self.Vx * dt
end

function Espinhos:draw()
    love.graphics.draw(self.img, self.x, self.y)
end
