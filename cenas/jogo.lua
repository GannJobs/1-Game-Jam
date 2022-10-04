--Pasta que será feita a manipulação dos objetos gerados para o jogo

Jogo = Classe:extend()

function Jogo:new()
    bloco = Bloco()
    Cenario:load()

    listaE = {}
    listaP = {}
    cont = 0
end

function Jogo:update(dt)
    bloco:update(dt)
    Cenario:update(dt)

    cont = cont + dt

    if cont > 2 then --Cria uma lista de Espinhos e Plataformas
        local espinho = Espinhos()
        table.insert(listaE, espinho)
        local plataforma = Plataformas()
        table.insert(listaP, plataforma)

        cont = 0
    end
end

function Jogo:draw() --desenha todos os elementos
    Cenario:draw()
    bloco:draw()

    for i, espinho in pairs(listaE) do
        Espinhos:draw()
    end
    for c, plataforma in pairs(listaP) do
        Plataformas:draw()
    end
end