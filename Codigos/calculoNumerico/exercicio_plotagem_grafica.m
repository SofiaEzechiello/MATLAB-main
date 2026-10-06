% Plotando o gráfico

pontos = linspace(0, 15, 100); 
polinomio = [1, -5, 6];          % Boa prática: separar os coeficientes por vírgulas
y = polyval(polinomio, pontos);  % Correção: polyval (com 'y', não 'i')
plot(pontos, y)                  % Correção: o padrão é plot(X, Y) para o gráfico não ficar invertido
title('Polinômio')               % Correção: sintaxe de strings e parênteses
xlabel('Pontos')       
