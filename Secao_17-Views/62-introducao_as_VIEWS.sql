
-- INTRODUÇÃO ÀS VIEWS

-- Views
-- Uma view é uma tabela virtual formada por linhas e colunas de dados,
-- os quais são provenientes de tabelas referenciadas em uma query que
-- define a view. Suas linhas e colunas são geradas de forma dinâmica
-- no instante em que a referência a view é chamada.

-- A query que determina uma view pode ser proveniente de uma ou mais
-- tabelas ou, até mesmo, de outras views. Para determinar uma view
-- que utiliza dados provenientes de fontes distintas, podemos
-- utilizar as queries distribuídas.

-- Ao criarmos uma view, podemos selecionar o conteúdo que desejamos
-- exibir de uma tabela, visto que views podem funcionar como filtros
-- que auxiliam no agrupamento de dados das tabelas, protegendo certas
-- colunas e simplificando o código de uma programação.

-- Uma view, depois de criada, não deixa de existir no sistema. Embora
-- sejam internamente compostas por SELECT, as views não ocupam espaço
-- no banco de dados.


-- As views podem ser de três tipos conforme sua finalidade:

-- * Views Standard: Neste tipo de view são reunidos, em uma tabela
-- virtual, dados provenientes de uma ou mais views ou tabelas base.
-- * Views indexadas: Este tipo de view é obtido por meio da criação
-- de um Índice clusterizado sobre a view.
-- * Views Praticionadas: Esse tipo de view permite que os dados em
-- uma grande tabela sejam divididos em tabelas menores. Os dados
-- são particionados entre as tabelas de acordo com os valores
-- aceitos nas colunas.


-- Vantagens das Views

-- * Reutilização: As views são objetos de caráter permanente, portanto,
-- elas podem ser lidas por vários usuários de forma simultânea.
-- * Redução do custo de execução: Os resultados já computados que ficam
-- armazenados em uma view indexada são empregados pelo otimizador de
-- query e, assim, é reduzido o custo de execução.
-- * Segurança: As views permitem ocultar determinadas colunas de uma
-- tabela.
-- * Cópia de dados: As views podem ser muito úteis para melhoria de
-- desempenho e para a partição de dados nos casos em que copiamos dados
-- para o SQL Server ou a partir dele.
-- * Simplificação do Código: As views permitem criar um código de
-- programação muito mais limpo, na medida em que podem conter um SELECT
-- completo.


-- Views
-- CREATE VIEW nome_view [colunas]
-- [WITH [ENCRYPTION] [,SCHEMABINDING]]
-- AS instrucao_select
-- [WITH CHECK OPTION]


-- Views
-- * nome_view: Nome da view.
-- * colunas: Nomes das colunas da view.
-- * WITH ENCRYPTION: Protege o código fonte da view, impedindo que ele
-- seja aberto a partir do Object Explorer.
-- * WITH SCHEMABINDING: Cria uma view ligada às estrutuas das tabelas
-- às quais ela faz referência. As tabelas que participam da view não
-- poderão ter suas estrutuas alteradas enquanto a view não for alterada
-- de forma compatível.
-- * instrucao_select: Comando SELECT que será gravado na view.
-- * WITH CHECK OPTION: Impede a inclusão e a alteração de dados atráves
-- da view que sejam incompatíveis com a cláusula WHERE da intrução SELECT.