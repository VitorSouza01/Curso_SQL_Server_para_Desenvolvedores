
-- SUGESTÕES PARA CONSULTAS

-- Sugestões para constuir consultas

-- No Desenvolvimento:

-- Normalização: A normalização é uma técnica para deixar o banco
-- rápido e inteligente. Utilize as principais normas formais,
-- para garantir que as tabelas foram desenvolvidas da maneira
-- correta.

-- Constraints: A utilização de constraints é fundamental para
-- a integridade das informações do banco, e são obrigatótias.
-- A chave primária (PRIMARY KEY) da tabela identifica, de forma
-- única e exclusiva, cada uma das linhas. Dessa maneira, todos
-- os campos podem ser trocados (exceto a chave).
-- Outra vantagem na criação da PRIMARY KEY é que o SQL
-- automaticamente criará um índice clusterizado, ou seja,
-- ordenará a tabela por este campo.
-- Já a constraint FOREIGN KEY relacionará, de forma física, as
-- tabelas, garantindo integridade relacional dos dados.

-- Poucas colunas: Dependendo do assunto de negócio, a quantidade
-- de informação pode gerar muitos campos. Como boa prática,
-- recomenda-se a criação de tabelas segmentadas por assunto,
-- por exemplo, para o assunto Cadastro de funcionários, crie
-- tabelas separadas para: Dados de Cadastro, Endereço, Contatos
-- e Telefones e Documentos.

-- Evite campos binários: A utilização de campos binários simplifica
-- o gerenciamento de arquivos, porém traz um grande incoveniente
-- que é o crescimento exponencial do banco de dados. Esse
-- crescimento ocorre por arquivos binários não serem estruturados.

-- Evite tabelas temporárias e cursores: São ferramentas úteis,
-- porém consomem muito recurso da máquina.

-- -------------------------------------------------------------------------

-- Nas Consultas:

-- Evite asterisco (*): Ao efetuar um SELECT *, o SQL retornará todos
-- os campos da(s) tabela(s). Como na grande maioria das vezes os
-- campos utilizados são poucos, este tipo de recurso consumirá mais
-- recursos do que informar os campos explicitamente.

-- Filtre as consultas: Utilize a cláusula WHERE para filtrar o
-- resultado da consulta, evitando acesso a toda a tabela;

-- Operador LIKE: Evite este operador, pois realiza uma varredura
-- no campo.

-- Índices: Sempre verifique quais consultas precisam de índices.
-- Uma dica é criar índices para consultas que são frequentemente
-- utilizadas.