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

    if self.noChao then -- se o bloco do jogador esta no chão ele vai pular
        if love.keyboard.isDown("w") then
            self.Vy = -self.speed
            self.noChao = false
        end
    else -- enquanto estiver no ar a gravidade irá agir para derruba-lo

        self.Vy = self.Vy + self.gravidade

        if self.y > 450 then
            self.y = 450
            self.noChao = true
            self.Vy = 0
        end
    end

    if checacolisao(self, Espinhos) then --verifica se o bloco perdeu acertando o espinho, fechando o programa(pensar em uma forma melhor de sinalizar derrota depois)
        love.event.quit( exitstatus)
    end

    if choqueplataforma(self, Plataformas) then --verifica se o bloco atingiiu a plataforma, assim perdendo
        love.event.quit( exitstatus)
    end

    if naplataforma(self, Plataformas) then --verifica se o bloco esta encima da plataforma
        self.y = Plataformas.height + Plataformas.y
        self.noChao = true
        self.Vy = 0
    end
end

function Bloco:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end
