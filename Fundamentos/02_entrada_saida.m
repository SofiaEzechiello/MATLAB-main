% =========================================================================
% DESCRICAO....: Aula 1 - Modulo 1. Programacao sequencial: entrada e
%                saida de dados. Cobre o comando input e sua semantica de
%                avaliacao, leitura de texto, conversao entre numero e
%                texto, saida formatada e alinhada, e o mapa de funcoes
%                de I/O de arquivo.
% AUTOR........: Sofia Marques Ezechiello
% REFERENCIA...: Notas de aula, Cap. 4.1
% VERSAO.......: 1.0.0
% =========================================================================
%
% Valores sugeridos para o primeiro teste:
%     capital = 10000  |  prazo = 5  |  taxa = 0.12  |  nome = Sofia
% =========================================================================

clear;
clc;


% #########################################################################
% SECAO 1 - O input NAO LE, ELE AVALIA
% #########################################################################
%
% Esta e a armadilha central deste capitulo, e ela nao existe em Python.
%
% O input() do Python devolve SEMPRE uma string. Voce tem que converter.
% O input do MATLAB devolve o RESULTADO DA AVALIACAO do que voce digitou,
% como se aquilo fosse uma linha de codigo da propria linguagem.
%
% Consequencias praticas, todas verdadeiras:
%
%     voce digita        input devolve
%     -----------        -------------------------------------------
%     10000              o double 10000
%     0.06*2             o double 0.12          <- ele CALCULOU
%     pi                 3.1416                 <- variavel do ambiente
%     [1 2 3]            um vetor 1x3           <- matriz inteira
%     sqrt(144)          12                     <- chamou uma funcao
%     banana             ERRO: undefined         <- nao existe essa variavel
%
% E um eval() disfarcado de leitura de teclado. Isso e conveniente (da
% para digitar contas direto no prompt) e e fragil (uma entrada boba
% derruba o script). No Modulo 7 blindamos isso com try-catch. Por
% enquanto, o que importa e voce SABER que funciona assim.

fprintf('##### SECAO 1 - LENDO NUMEROS DO TECLADO #####\n\n');
fprintf('Dica: experimente digitar uma conta, tipo 5000*2, em vez de\n');
fprintf('um numero puro. Repare que ele aceita e calcula.\n\n');

capital = input('Valor do capital inicial (R$): ');
prazo   = input('Prazo do investimento (em anos): ');
taxa    = input('Taxa de juros anual (decimal, ex: 0.12): ');

fprintf('\n');


% #########################################################################
% SECAO 2 - CALCULO
% #########################################################################
%
% Regime de juros compostos:   M = C * (1 + i)^n
%
% Repare no acento circunflexo. Como capital, taxa e prazo sao todos
% matrizes 1x1, aqui o ^ (potenciacao matricial) e o .^ (potenciacao
% elemento a elemento) dao o mesmo resultado. Isso e uma coincidencia
% do caso 1x1, nao uma regra. No Modulo 2, quando 'prazo' virar um
% vetor de varios horizontes, essa linha vai quebrar se voce nao trocar
% ^ por .^ Guarde este paragrafo, voce vai voltar nele.

montante = capital * (1 + taxa)^prazo;
juros    = montante - capital;
retorno_periodo = montante / capital - 1;


% #########################################################################
% SECAO 3 - SAIDA ALINHADA
% #########################################################################
%
% Em relatorio financeiro, alinhamento nao e estetica: e prevencao de
% erro de leitura. Numero desalinhado faz voce confundir 10.000 com
% 100.000 num relance, e isso ja custou dinheiro a muita gente.
%
% O especificador %12.2f reserva 12 caracteres de LARGURA e usa 2 casas
% decimais. Como o padrao e alinhar a direita, todas as casas decimais
% caem na mesma coluna vertical.

fprintf('##### SECAO 3 - RESULTADO #####\n\n');

fprintf('  Capital inicial : %12.2f\n', capital);
fprintf('  Montante final  : %12.2f\n', montante);
fprintf('  Juros ganhos    : %12.2f\n', juros);
fprintf('  Rentabilidade   : %11.2f%%\n', retorno_periodo * 100);

fprintf('\n');

% Compare com a versao sem largura, para ver a diferenca:
fprintf('  Sem alinhamento: %.2f / %.2f / %.2f\n\n', capital, montante, juros);


% #########################################################################
% SECAO 4 - LENDO TEXTO: o segundo argumento 's'
% #########################################################################
%
% Como o input AVALIA, digitar seu nome sem aspas causaria erro
% ("undefined variable Sofia"). Para ler texto literal, existe o
% segundo argumento:
%
%       nome = input('Nome: ', 's');
%
% O 's' desliga a avaliacao e devolve o que foi digitado como char array.

fprintf('##### SECAO 4 - LENDO TEXTO #####\n\n');

nome_investidor = input('Nome do investidor: ', 's');

fprintf('\n');
fprintf('class(nome_investidor) = %s\n', class(nome_investidor));
fprintf('size(nome_investidor)  = [%d %d]\n\n', ...
        size(nome_investidor, 1), size(nome_investidor, 2));

% Repare no size: 1 x (numero de letras). Confirma o que vimos no a01:
% texto E um vetor de char. Nao existe objeto string atomico.

% -------------------------------------------------------------------------
% CONCATENANDO TEXTO
% -------------------------------------------------------------------------
% Como texto e vetor, concatenar texto e concatenar vetores. Os mesmos
% colchetes que constroem matriz constroem frase:

saudacao = ['Ola, ', nome_investidor, '! Bem-vinda.'];
disp(saudacao);

% Isso funciona, mas so quando TODAS as partes ja sao texto. Se voce
% tentar [nome_investidor, ' tem ', prazo] o resultado sai lixo, porque
% o numero vai ser interpretado como codigo de caractere. Teste depois,
% e instrutivo.
%
% Por isso, para misturar texto e numero, prefira SEMPRE o fprintf:

fprintf('%s, seu montante ao fim de %d anos e de R$ %.2f\n\n', ...
        nome_investidor, prazo, montante);


% #########################################################################
% SECAO 5 - CONVERTENDO ENTRE NUMERO E TEXTO
% #########################################################################
%
% Voce vai precisar disso o tempo todo ao ler CSV, montar titulo de
% grafico ou gerar nome de arquivo. Quatro funcoes resolvem quase tudo:
%
%   num2str(x)      numero  -> texto   (formatacao automatica)
%   str2double(s)   texto   -> double  (devolve NaN se nao der)
%   sprintf(fmt,..) igual ao fprintf, mas DEVOLVE o texto em vez de
%                   imprimir. Esta e a mais util das quatro.
%   strtrim(s)      remove espacos nas pontas

fprintf('##### SECAO 5 - NUMERO <-> TEXTO #####\n\n');

texto_do_numero = num2str(montante);
fprintf('num2str(montante) = %s   (class = %s)\n', ...
        texto_do_numero, class(texto_do_numero));

numero_do_texto = str2double('0.1490');
fprintf('str2double(''0.1490'') = %.4f   (class = %s)\n', ...
        numero_do_texto, class(numero_do_texto));

% str2double devolve NaN quando a conversao falha, em vez de dar erro.
% Isso e util: e assim que voce detecta celula suja num CSV.
valor_invalido = str2double('n/d');
fprintf('str2double(''n/d'') = %.1f   <- NaN sinaliza falha de conversao\n\n', ...
        valor_invalido);

% -------------------------------------------------------------------------
% sprintf: o irmao do fprintf que devolve em vez de imprimir
% -------------------------------------------------------------------------
% Use sempre que precisar do texto formatado como VALOR: titulo de
% grafico, nome de arquivo, mensagem de erro, celula de tabela.

titulo_grafico = sprintf('Evolucao do capital - %d anos a %.2f%% a.a.', ...
                         prazo, taxa * 100);
disp(titulo_grafico);

nome_arquivo = sprintf('resultado_%s_%danos.csv', nome_investidor, prazo);
disp(nome_arquivo);

fprintf('\n');


% #########################################################################
% SECAO 6 - I/O DE ARQUIVO: o mapa e uma correcao importante
% #########################################################################
%
%   ENTRADA                            SAIDA
%   -------------------------------    ---------------------------------
%   input(msg)        teclado          disp(x)             console, cru
%   input(msg,'s')    teclado, texto   fprintf(fmt,...)    console, format.
%   csvread(arq)      CSV numerico     csvwrite(arq, M)    CSV numerico
%   dlmread(arq,sep)  delimitado       dlmwrite(arq,M,sep) delimitado
%   readtable(arq)    CSV misto        writetable(T, arq)  CSV / XLSX
%   load('x.mat')     binario nativo   save('x.mat','v')   binario nativo
%   fopen/fgetl       stream tipo C    fopen/fprintf/fclose  stream tipo C
%
% -------------------------------------------------------------------------
% CORRECAO / CUIDADO DE VERSAO
% -------------------------------------------------------------------------
% As notas de aula listam writematrix como funcao de saida. Cuidado:
% writematrix so existe no MATLAB a partir do R2019a. No R2014a da
% UFRGS ela NAO existe. O equivalente portavel para matriz numerica e
% csvwrite ou dlmwrite.
%
% Do lado do Octave a situacao tambem varia por versao. Antes de
% depender de readtable/writetable, TESTE no seu ambiente. O comando
% exist devolve 0 quando a funcao nao existe:
%
%       exist('readtable')     % 0 = nao existe aqui
%       exist('csvread')       % 2 ou 5 = existe
%
% Rode isso no seu Octave 11.3 e anote o resultado. Nao assuma.
%
% DENOMINADOR COMUM SEGURO (funciona em R2014a e em qualquer Octave):
%       csvread / csvwrite / dlmread / dlmwrite / fopen / fprintf / fclose
%
% Para as suas series de IBGE/SIDRA, CEPEA e NOAA, a estrategia sera
% limpar o cabecalho e ler com dlmread, ou ir de fopen/textscan quando
% o arquivo tiver mistura de texto e numero. Isso e o Modulo 6.

fprintf('##### SECAO 6 - TESTE DE DISPONIBILIDADE #####\n\n');

funcoes_io = {'csvread', 'csvwrite', 'dlmread', 'dlmwrite', ...
              'readtable', 'writetable', 'writematrix'};

for k = 1:numel(funcoes_io)
    if exist(funcoes_io{k}) ~= 0
        situacao = 'DISPONIVEL';
    else
        situacao = 'nao existe aqui';
    end
    fprintf('  %-12s -> %s\n', funcoes_io{k}, situacao);
end

fprintf('\n');

% Usei um loop aqui porque e I/O de diagnostico, nao calculo numerico.
% Loop para imprimir mensagem: tudo bem. Loop para fazer conta em
% vetor: quase sempre desnecessario. Esta distincao e o Modulo 4.


% #########################################################################
% SECAO 7 - ESCREVENDO UM ARQUIVO DE VERDADE
% #########################################################################
%
% Vamos gravar o resultado num CSV usando o caminho portavel.
% csvwrite aceita apenas matriz NUMERICA (sem cabecalho, sem texto).
% Para cabecalho, usa-se fopen/fprintf/fclose, que e o caminho de
% controle total.

fprintf('##### SECAO 7 - GRAVANDO CSV #####\n\n');

linha_resultado = [capital, prazo, taxa, montante, juros];

identificador = fopen('resultado_a02.csv', 'w');   % 'w' = write, cria/zera

if identificador == -1
    fprintf('Falha ao abrir o arquivo para escrita.\n');
else
    fprintf(identificador, 'capital,prazo,taxa,montante,juros\n');
    fprintf(identificador, '%.2f,%d,%.4f,%.2f,%.2f\n', linha_resultado);
    fclose(identificador);
    fprintf('Arquivo resultado_a02.csv gravado no diretorio atual.\n');
    fprintf('Diretorio atual: %s\n\n', pwd);
end

% Tres coisas novas nesse bloco:
%
%   1. fopen devolve um IDENTIFICADOR numerico (um "fid"), ou -1 se
%      falhar. Sempre teste o -1. E o equivalente do open() do Python,
%      mas sem context manager: aqui voce fecha na mao.
%
%   2. fprintf com o fid como PRIMEIRO argumento escreve no ARQUIVO em
%      vez da tela. E literalmente a mesma funcao. Sem fid, ele usa o
%      descritor 1, que e a tela.
%
%   3. fclose e obrigatorio. Se o script morrer antes dele, o arquivo
%      fica aberto e travado. O Cap. 5 das notas resolve isso com
%      onCleanup, que e o equivalente do 'with' do Python. Modulo 7.


% #########################################################################
% SECAO 8 - AUTOAVALIACAO
% #########################################################################
%
%   1. Por que input('x: ') e perigoso e input('x: ', 's') nao e?  (Sec.1,4)
%   2. O que acontece se voce digitar  2*3  no prompt de capital?  (Sec. 1)
%   3. Qual a diferenca entre fprintf e sprintf?                   (Sec. 5)
%   4. O que str2double devolve quando a conversao falha, e por     (Sec. 5)
%      que isso e util ao ler CSV do CEPEA?
%   5. Por que ['idade: ', 25] nao produz o texto esperado?        (Sec. 4)
%   6. Como fprintf sabe se deve escrever na tela ou num arquivo?  (Sec. 7)
%   7. Qual funcao de gravar CSV e segura no MATLAB R2014a?        (Sec. 6)
%
% Se as sete sairam, va para o a03_capm_sharpe.m.

fprintf('=========================================================\n');
fprintf(' Fim do a02. Proximo arquivo: a03_capm_sharpe.m\n');
fprintf('=========================================================\n');

% =========================================================================
% FIM DO ARQUIVO
% =========================================================================