-- Pasta que cria a cena e ja faz a chamada dos arquivos

function love.load()
    Classe = require "classes/classic"

    require "cenario"
    require "classes/bloco"
    require "classes/espinhos"
    require "classes/plataformas"
    require "cenas/jogo"

    jogo = Jogo()
end

function love.update(dt)
    Jogo:update(dt)
end

function love.draw()
    Jogo:draw()
end

function checacolisao(a, b) --checa a colisao com qualquer elemento
    if a.x + a.width > b.x and a.x < b.x + b.width and a.y + a.height > b.y and a.y < b.y + b.height then
        return true
    else
        return false
    end
end

function naplataforma(a, b) --checa se o bloco do jogador se encontra encima da plataforma
    if a.y + a.height > b.y then
        return true
    else
        return false
    end
end

function choqueplataforma(a, b) --checa se o bloco do jogador da de cara com o bloco da plataforma
   if a.x + a.width > b.x then
       return true
   else
       return false
   end
end
