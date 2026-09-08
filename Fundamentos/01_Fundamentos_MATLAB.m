% =========================================================================
% DESCRICAO....: Aula 1 - Modulo 1. Introducao ao lexico da linguagem e a
%                sua semantica matricial. Cobre tipos, supressao de saida,
%                construcao e indexacao de matrizes, e saida formatada.
% AUTOR........: Sofia Marques Ezechiello
% REFERENCIA...: Notas de aula, Cap. 1, 2 e 4.1
% VERSAO.......: 1.0.0
% ========================================================================


% #########################################################################
% SECAO 1 - NAO EXISTE ESCALAR
% #########################################################################
%
% Esta e A ideia da linguagem. Se voce so levar uma coisa desta aula,
% leve esta.
%
% Em Python:      a = 5   cria um objeto do tipo int.
% Em MATLAB:      a = 5   cria uma MATRIZ 1x1 do tipo double.
%
% Nao e figura de linguagem nem detalhe de implementacao. E arquitetura:
% a linguagem nasceu do Fortran, e no Fortran a unidade de memoria e o
% array. Todo operador da linguagem foi definido para matrizes, e aquilo
% que voce chama de "numero" e so o caso degenerado 1x1.

fprintf('##### SECAO 1 - NAO EXISTE ESCALAR #####\n\n');

a = 5;

% Quatro funcoes que respondem "o que e isso que eu criei?":
fprintf('a         = %d\n', a);
fprintf('size(a)   = [%d %d]   <- 1 linha, 1 coluna\n', size(a, 1), size(a, 2));
fprintf('ndims(a)  = %d          <- numero de dimensoes\n', ndims(a));
fprintf('numel(a)  = %d          <- numero total de elementos\n', numel(a));
fprintf('class(a)  = %s     <- o TIPO do dado\n\n', class(a));

% -------------------------------------------------------------------------
% O TIPO PADRAO E double
% -------------------------------------------------------------------------
% Digitar 2 NAO cria um inteiro. Cria o double 2.0, ponto flutuante de
% 64 bits. Se voce quiser inteiro de verdade, tem que pedir:

b = int32(2);
c = single(2);
d = true;
e = 'A';

fprintf('class(int32(2))  = %s\n',  class(b));
fprintf('class(single(2)) = %s\n',  class(c));
fprintf('class(true)      = %s\n',  class(d));
fprintf('class(''A'')       = %s\n\n', class(e));

% PARE E PENSE ------------------------------------------------------------
% Antes de olhar a proxima linha: o que voce acha que size('PETR4')
% devolve? Um erro? [1 1]? Outra coisa?

texto_teste = 'PETR4';
fprintf('size(''PETR4'') = [%d %d]\n', size(texto_teste, 1), size(texto_teste, 2));
fprintf('   -> 1x5. TEXTO TAMBEM E MATRIZ: um vetor de 5 caracteres.\n');
fprintf('   -> nao existe objeto string atomico como em Python.\n\n');

% Guarde a consequencia mais importante disso para o Modulo 2:
% como tudo e matriz, x^2 vai significar POTENCIACAO MATRICIAL (X*X),
% e nao "elevar cada elemento ao quadrado". Para elemento a elemento
% existe um operador separado, com ponto: x.^2
% Confundir os dois e o bug numero 1 de quem vem do Python.


% #########################################################################
% SECAO 2 - O PONTO E VIRGULA
% #########################################################################
%
% Em Python, ';' e opcional e ninguem usa. Aqui ele tem funcao semantica:
% SUPRIME a impressao automatica do resultado no console.
%
%   com    ';'  -> a linguagem calcula em silencio
%   sem    ';'  -> a linguagem calcula E ecoa o resultado na tela

fprintf('##### SECAO 2 - O PONTO E VIRGULA #####\n\n');

taxa_selic = 0.1500;      % silencioso    <- faca SEMPRE assim
taxa_cdi   = 0.1490       % ecoa na tela