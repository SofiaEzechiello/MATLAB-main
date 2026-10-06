%{
Programa Matlab
Descricao:  leia um n´umero e imprima na tela se ele ´e negativo, nulo ou positivo
Versao: 0.0.1
%}



% Limpeza de memoria e tela

clear
clc


% Alocacao de memoria



% Entrada de dados
numero = input('Digite um numero: ');


% Processamento de dados
if numero > 0
  fprintf('Este numero e positivo');

elseif numero < 0
  fprintf('Este numero e negativo');

else
  fprintf('Este numero e nulo');

  end

% Saida de dados


