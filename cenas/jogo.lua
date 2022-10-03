Jogo = Classe:extend()

function Jogo:new()
   bloco = Bloco()
   Cenario:load()

   listaE = {}
   cont = 0
end

function Jogo:update(dt)
   Bloco:update(dt)
   Cenario:update(dt)

   cont = cont + dt

   if cont > 1.5 then 
      local espinho = Espinhos()
      table.insert(listaE, espinho)

      cont = 0
   end
end

function Jogo:draw()
   Cenario:draw()
   Bloco:draw()

   for i, espinho in pairs(listaE) do
      Espinhos:draw()
   end
end