Bloco = Classe:extend()

function Bloco:new()
    self.width = 50
    self.height = 50
    self.x = 200
    self.y = 450
    self.Vy = 0
    self.speed = 700
    self.gravidade = 30
    self.noChao = true
end

function Bloco:update(dt)
    self.y = self.y + self.Vy * dt

    if self.noChao then -- no chão
        if love.keyboard.isDown("w") then
            self.Vy = -self.speed
            self.noChao = false
        end
    else -- no ar

        self.Vy = self.Vy + self.gravidade

        if self.y > 450 then
            self.y = 450
            self.noChao = true
            self.Vy = 0
        end
    end
end

function Bloco:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end
