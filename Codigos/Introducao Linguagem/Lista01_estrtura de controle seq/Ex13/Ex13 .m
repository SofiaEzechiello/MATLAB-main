
%{
Programa Matlab
Descricao: calculo da funcao demanda
Versao: 0.0.1
%}



% Limpeza de memoria e tela

clear
clc


% Alocacao de memoria



% Entrada de dados
renda = input('Digite a sua renda atual: ');
preco = input('Digite o preco atual: ');



% Processamento de dados
demanda = renda/preco;

% Saida de dados
fprintf('A sua demanda atual e de %.2f', demanda);

