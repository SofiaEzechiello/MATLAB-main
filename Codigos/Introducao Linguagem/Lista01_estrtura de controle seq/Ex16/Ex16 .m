%{
Programa Matlab
Descricao: CAPM
Versao: 0.0.1
%}



% Limpeza de memoria e tela

clear
clc


% Alocacao de memoria



% Entrada de dados
rf = input('digite o retorno do ativo sem risco: ');
rm = input('digite o retorno da carteira de mercado: ');
beta = input('digite o coeficiente de sensibilidade do ativo: ');




% Processamento de dados
retorno_esperado = rf + beta*(rm-rf);

% Saida de dados
fprintf('O valor de retorno esperado de seu ativo e de %.2f', retorno_esperado);

