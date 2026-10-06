%{
Programa Matlab
Descricao:
Versao: 0.0.1
%}



% Limpeza de memoria e tela

clear
clc


% Alocacao de memoria
hora_aula = 40;
imposto = 0.3;





% Entrada de dados
horas_trabalhadas = input('Digite quantas horas de trabalho: ');



% Processamento de dados
salario_bruto = horas_trabalhadas * hora_aula;
descontos = salario_bruto * imposto;
salario_liquido = salario_bruto - descontos;

% Saida de dados
fprintf("Seus devidos valores são: \n");
fprintf("O salário bruto do funcionário é: R$ %.2f\n", salario_bruto);
fprintf("O valor dos descontos é: R$ %.2f\n", descontos);
fprintf("O salario líquido do funcionário é: R$ %.2f\n", salario_liquido);


