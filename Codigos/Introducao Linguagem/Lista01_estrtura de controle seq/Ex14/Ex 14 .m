%{
Programa Matlab
Descricao: distancia entre dois pontos
Versao: 0.0.1
%}



% Limpeza de memoria e tela

clear
clc


% Alocacao de memoria



% Entrada de dados
x1 = input('digite x1: ');
y1 = input('digite y1: ');
x2 = input('digite x2: ');
y2 = input('digite y2: ');

% Processamento de dados
euclid = sqrt(((y2 - y1)^2) + (x2 - x1)^2);

% Saida de dados
fprintf('A distancia de dois pontos, de acordo com o calculo euclidiano e de %.2f', euclid);

