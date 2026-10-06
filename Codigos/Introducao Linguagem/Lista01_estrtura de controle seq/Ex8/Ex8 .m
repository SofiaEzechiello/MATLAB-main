%{
Programa Matlab
Descricao: EQUAÇÃO LINEAR AX=B
Versao: 0.0.1
%}



% Limpeza de memoria e tela

clear
clc


% Alocacao de memoria


% Entrada de dados
A = input('digite o termo A: ');
B = input('digite o termo B: ');



% Processamento de dados
eq_linear = A / B;

x = eq_linear;


% Saida de dados
fprintf('A resolucao da equacao linear, na qual o termo A e %d e o termo B e %d, temos o termo x como %.2f\n', A , B , x);

