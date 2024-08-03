
-- SUGEST�ES PARA CONSULTAS

-- Sugest�es para constuir consultas

-- No Desenvolvimento:

-- Normaliza��o: A normaliza��o � uma t�cnica para deixar o banco
-- r�pido e inteligente. Utilize as principais normas formais,
-- para garantir que as tabelas foram desenvolvidas da maneira
-- correta.

-- Constraints: A utiliza��o de constraints � fundamental para
-- a integridade das informa��es do banco, e s�o obrigat�tias.
-- A chave prim�ria (PRIMARY KEY) da tabela identifica, de forma
-- �nica e exclusiva, cada uma das linhas. Dessa maneira, todos
-- os campos podem ser trocados (exceto a chave).
-- Outra vantagem na cria��o da PRIMARY KEY � que o SQL
-- automaticamente criar� um �ndice clusterizado, ou seja,
-- ordenar� a tabela por este campo.
-- J� a constraint FOREIGN KEY relacionar�, de forma f�sica, as
-- tabelas, garantindo integridade relacional dos dados.

-- Poucas colunas: Dependendo do assunto de neg�cio, a quantidade
-- de informa��o pode gerar muitos campos. Como boa pr�tica,
-- recomenda-se a cria��o de tabelas segmentadas por assunto,
-- por exemplo, para o assunto Cadastro de funcion�rios, crie
-- tabelas separadas para: Dados de Cadastro, Endere�o, Contatos
-- e Telefones e Documentos.

-- Evite campos bin�rios: A utiliza��o de campos bin�rios simplifica
-- o gerenciamento de arquivos, por�m traz um grande incoveniente
-- que � o crescimento exponencial do banco de dados. Esse
-- crescimento ocorre por arquivos bin�rios n�o serem estruturados.

-- Evite tabelas tempor�rias e cursores: S�o ferramentas �teis,
-- por�m consomem muito recurso da m�quina.

-- -------------------------------------------------------------------------

-- Nas Consultas:

-- Evite asterisco (*): Ao efetuar um SELECT *, o SQL retornar� todos
-- os campos da(s) tabela(s). Como na grande maioria das vezes os
-- campos utilizados s�o poucos, este tipo de recurso consumir� mais
-- recursos do que informar os campos explicitamente.

-- Filtre as consultas: Utilize a cl�usula WHERE para filtrar o
-- resultado da consulta, evitando acesso a toda a tabela;

-- Operador LIKE: Evite este operador, pois realiza uma varredura
-- no campo.

-- �ndices: Sempre verifique quais consultas precisam de �ndices.
-- Uma dica � criar �ndices para consultas que s�o frequentemente
-- utilizadas.