%{
Programa Matlab
Descrição: calcule o sal´ario de um professor horista na Universidade XYZ. O programa deve perguntar o n´umero de horas trabalhadas, calcular e imprimir na tela o valor do sal´ario bruto,
do sal´ario l´?quido e do total de descontos, sabendo que o desconto do imposto ´e 30% e
que o valor da hora-aula ´e R$ 40,00.

Versão: 0.0.1
%}



% Limpeza de memoria e tela

clear
clc
close all


% Alocação de memória



% Entrada de dados
horas_trabalhados = input('digite aqui as horas de trabalho: ');




% Processamento de dados
salario_bruto = horas_trabalhados * 40;
descontos = salario_bruto * 0.7;
salario_liquido = salario_bruto - descontos;


% Saída de dados
fprintf('Seu salário bruto é de:R$ %d\n', salario_bruto)
fprintf('Seu salário liquido é de: R$ %d\n', salario_liquido)
fprintf('Seu total de descontos é de: R$ %d\n', descontos)
