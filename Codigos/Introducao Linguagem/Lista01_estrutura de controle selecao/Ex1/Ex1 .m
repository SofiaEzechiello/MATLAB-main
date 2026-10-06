%{
Programa Matlab
Descricao: numero entre igualdades
Versao: 0.0.1
%}



% Limpeza de memoria e tela

clear
clc


% Alocacao de memoria



% Entrada de dados
numero = input('digite um numero: ');


% Processamento de dados
if numero < 10
  numero_1 = numero * 2;
  fprintf('numero valido, %d', numero_1);

elseif  numero > 10 && numero < 20
  numero_2 = numero /2;
  fprintf('numero valido, %d', numero_2);
  else
  fprintf('O numero digitado, isto e, %d, nao e valido', numero);

end

% Saida de dados


