%{
Programa Matlab
Descricao: SOMA INFINITA
Versao: 0.0.1
%}



% Limpeza de memoria e tela

clear
clc


% Alocacao de memoria


% Entrada de dados
r = input('digite a razao: ');
a1 = input('digite o primeiro termo: ');
n = input('digite a quantidade de termos: ');



% Processamento de dados
an = a1*(r^(n-1));
sn = (a1*((r^n)-1)/1-r);


% Saida de dados
fprintf('O termo geral de numeros %d e %.2f\n', n, an);
fprintf('A soma infinita de numeros %d e %.2f\n', n, sn);

