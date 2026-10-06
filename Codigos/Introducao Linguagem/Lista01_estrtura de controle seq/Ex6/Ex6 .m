%{
Programa Matlab
Descricao: SOMA FINITA
Versao: 0.0.1
%}



% Limpeza de memoria e tela

clear
clc


% Alocacao de memoria


% Entrada de dados
razao = input('digite a razao: ');
primeiro_termo = input('digite o primeiro termo: ');
termos = input('digite a quantidade de termos: ');



% Processamento de dados
termo_geral = primeiro_termo + ((termos - 1) * razao);
soma_finita = ((primeiro_termo + termo_geral) * termos)/2;


% Saida de dados
fprintf('O termo geral de numeros %d e %.2f\n', termos, soma_finita);
fprintf('A soma finita de numeros %d e %.2f\n', termos, termo_geral);

