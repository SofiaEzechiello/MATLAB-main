%{
Programa Matlab
Descricao: leia um texto e informe se ele ´e o nome da capital de um estado da regi˜ao sul do Brasil
Versao: 0.0.1
%}



% Limpeza de memoria e tela

clear
clc


% Alocacao de memoria
sul = {'porto alegre', 'curitiba', 'florianopolis'};


% Entrada de dados
palavra = input('digite uma capital: ','s');

% Processamento de dados
if any(strcmpi(palavra, sul))
  fprintf('A capital digitada pertence a regiao sul', palavra);

else
  fprintf('A capital digitada nao pertence a regiao sul', palavra);

  end

% Saida de dados


