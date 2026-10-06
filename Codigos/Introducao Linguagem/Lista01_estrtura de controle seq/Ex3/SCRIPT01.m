%{
Programa Matlab
Descrição: leia dois n´umeros do teclado, calcule a sua soma e imprima na
tela seu resulto
Versão: 0.0.1
%}



% Limpeza de memoria e tela

clear
clc


% Alocação de memória



% Entrada de dados
numero1 = input(Digite um numero);
numero2 = input(Digite outro numero);



% Processamento de dados
soma = numero1 + numero2;

% Saída de dados
fprintf('Sua soma é de: %d\n', soma);
