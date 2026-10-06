%{
Programa Matlab
Descricao: Nome e idade e verificar if menor de 18
Versao: 0.0.1
%}



% Limpeza de memoria e tela

clear
clc


% Alocacao de memoria



% Entrada de dados
nome = input('Digite seu nome: ', 's');
idade = input('Digite a sua idade: ');

% Processamento de dados
if idade < 18
  fprintf('%s, voce nao pode assistir esse filme', nome);

else
  fprintf('%s, voce  pode assistir esse filme', nome)

  end



% Saida de dados


