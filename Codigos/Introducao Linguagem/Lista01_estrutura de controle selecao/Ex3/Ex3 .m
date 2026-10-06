%{
Programa Matlab
Descricao: verificar numeros pares e numeros impares, lemnbrando que a funcao mod é o resto da divisao (equivalente ao % no python)
Versao: 0.0.1
%}



% Limpeza de memoria e tela

clear
clc


% Alocacao de memoria



% Entrada de dados
numero = input('digite um numero: ');

% Processamento de dados
if mod(numero, 3) = 0
  fprintf('O numero digitado e multiplo de 3');

else
  fprintf('O numero digitado nao e multiplo de 3');

 end

% Saida de dados


