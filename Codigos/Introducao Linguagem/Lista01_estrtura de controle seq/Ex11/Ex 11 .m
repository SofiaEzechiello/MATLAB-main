%{
Programa Matlab
Descricao: MEDIA ARITMÉDICA
Versao: 0.0.1
%}



% Limpeza de memoria e tela

clear
clc


% Alocacao de memoria


% Entrada de dados
a = input('digite um numero: ');
b = input('digite um numero: ');
c = input('digite um numero: ');
d = input('digite um numero: ');


% Processamento de dados
media_arit = (a + b + c + d)/4;


% Saida de dados
fprintf('A media aritmedica e %.2f\n', media_arit);


