%{
Programa Matlab
Descricao: EQUACAO DO SEGUNDO GRAU
Versao: 0.0.1
%}



% Limpeza de memoria e tela

clear
clc


% Alocacao de memoria


% Entrada de dados
a = input('digite o termo a: ');
b = input('digite o termo b: ');
c = input('digite o termo c: ');



% Processamento de dados
delta = -(b^2)-4*a*c;
x1 = (-(b) + sqrt(delta))/2*a;
x2 = (-(b) - sqrt(delta))/2*a;



% Saida de dados
fprintf('O valor de delta e %.2f\n', delta);
fprintf('O valor de x1 e %.2f\n', x1);
fprintf('O valor de x1 e %.2f\n', x2);

