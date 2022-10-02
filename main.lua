function love.load()
    Classe = require "classes/classic"

    require "cenario"
    require "classes/espinhos"
    require "classes/bloco"
    require "cenas/jogo"
end

function love.update(dt)
    Jogo:update(dt)
end

function love.draw()
    Jogo:draw()
end