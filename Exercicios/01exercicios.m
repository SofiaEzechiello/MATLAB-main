
%01 - armazene os n´umeros 2 e 3, calcule a sua soma e imprima na tela o resultado.
A = 2;
B = 3;

soma= A+B;

fprintf("a soma de %d e %d e: %d\n", A, B, soma); 
% %d = imprime um número inteiro
% \n = pula para a próxima linha

%'02 - leia dois n´umeros do teclado, calcule a sua soma e imprima na tela seu resultado.
A = input("Digite o primeiro número: ");
B = input("Digite o segundo número: "); 

soma= A+B;

fprintf("a soma de %d e %d e: %d\n", A, B, soma);

%03 - pergunte o nome do usu´ario e apresente a mensagem ”Oi,...”, seguida pelo nome do usu´ario.
nome = input("Digite seu nome: ");
fprintf("Oi, %s!\n", nome);

% %s = imprime uma string


%0

hora_trabalhadas = input("Digite o número de horas trabalhadas: ");
valor_hora = input("Digite o valor da hora trabalhada: ");
salario bruto = hora_trabalhadas * valor_hora;
descontos = 0,3 * salario_bruto;
salario liquido = salario_bruto - descontos;
fprintf("Seus devidos valores são: \n");
fprintf("O salário bruto do funcionário é: R$ %.2f\n", salario_bruto);
fprintf("O valor dos descontos é: R$ %.2f\n", descontos);  
fprintf("O salario líquido do funcionário é: R$ %.2f\n", salario_liquido);


%15

A = input("Digite o primeiro número: ");
B = input("Digite o segundo número: "); 
C = input("Digite o terceiro número: ");

valores= [A, B, C];
crescente = sort(valores);
fprintf("Os números em ordem crescente são: %d, %d, %d\n", crescente(1), crescente(2), crescente(3));


%16 calculo de retorno de ativo

RF = input("Digite o preço da ação: ");
RM = input("Digite o valor da carteira: ");
Betai= input("Digite o valor do beta: ");

retorno = RF + Betai * (RM - RF);
fprintf("O retorno do ativo é: %.2f\n", retorno);

%1 - estrutura

numero = input("Digite um número: ");
if numero < 10
    numero = numero*2;
    fprintf("numero", numero);

elseif numero > 10  && numero <20;
    numero = numero/2;
    fprintf("numero", numero);

    else
    fprintf("numero", numero);
end

