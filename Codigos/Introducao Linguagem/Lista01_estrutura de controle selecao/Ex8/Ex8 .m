%{
Programa Matlab
Descricao: programa de nota de aula
Versao: 0.0.1
%}



% Limpeza de memoria e tela

clear
clc


% Alocacao de memoria



% Entrada de dados
p1 = input('Digite a nota da p1: ');
p2 = input('Digite a nota da p2: ');
t1 = input('Digite a nota da t1: ');
t2 = input('Digite a nota da t2: ');

valores_prova = (p1 + p2) * 0.6;
valores_trabalho = (t1 + t2) * 0.4;

notas = valores_prova + valores_trabalho;

% Processamento de dados
media_total = sum(notas);

if  media_total >= 7
  fprintf('O aluno esta aprovado', media_total);

else
  fprintf('O aluno esta reprovado', media_total);

  end

% Saida de dados


