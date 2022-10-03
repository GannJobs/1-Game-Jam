Jogo = Classe:extend()

function Jogo:new()
    bloco = Bloco()
    Cenario:new()
    Plataformas:new()

    listaE = {}
    listaP = {}
    cont = 0
end

function Jogo:update(dt)
    Bloco:update(dt)
    Cenario:update(dt)

    cont = cont + dt

    if cont > 2 then
        local espinho = Espinhos()
        table.insert(listaE, espinho)
        local plataforma = Plataformas()
        table.insert(listaP, plataforma)

        cont = 0
    end
end

function Jogo:draw()
    Cenario:draw()
    Bloco:draw()

    for i, espinho in pairs(listaE) do
        Espinhos:draw()
    end
    for c, plataforma in pairs(listaP) do
        Plataformas:draw()
    end
end

function checacolisao(a, b)
    if a.x + a.width > b.x and a.x < b.x + b.width and a.y + a.height > b.y and a.y < b.y + b.height then
        return true
    else
        return false
    end
end

function naplataforma(a, b)
    if a.y + a.height > b.y then
        return true
    else
        return false
    end
end
