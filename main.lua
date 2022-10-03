-- Pasta que cria a cena e ja faz a chamada dos arquivos

function love.load()
    Classe = require "classes/classic"

    require "cenario"
    require "classes/bloco"
    require "classes/espinhos"
    require "classes.plataformas"
    require "cenas/jogo"
end

function love.update(dt)
    Jogo:update(dt)
end

function love.draw()
    Jogo:draw()
end
