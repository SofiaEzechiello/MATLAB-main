
 %{
Programa Matlab
Descricao: MATEMÁTICA FINANCEIRA - VALOR CAPITALIZADO
Versao: 0.0.1
%}



% Limpeza de memoria e tela

clear
clc


% Alocacao de memoria


% Entrada de dados
c = input('digite o valor capitalizado: ');
juros = input('digite a taxa de juros: ');
n = input('digite o periodo: ');



% Processamento de dados
i = juros /100;
M = c*(1+ i)^n;



% Saida de dados
fprintf('O valor capitalizado e %.2f\n', M);


