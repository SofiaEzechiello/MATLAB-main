%{
Programa Matlab
Descricao: ler tres vaores e colocar em ordem crescente
Versao: 0.0.1
%}


% Limpeza de memoria e tela

clear
clc


% Alocacao de memoria


% Entrada de dados
a = input('digite a: ');
b = input('digite b: ');
c = input('digite c: ');


% Processamento de dados
crescente =[a,b,c];
ordem = sort(crescente);

% Saida de dados
fprintf('A ordem crescente de seu conjunto de numeros sao: %d, %d e %d', ordem(1),ordem(2),ordem(3));



