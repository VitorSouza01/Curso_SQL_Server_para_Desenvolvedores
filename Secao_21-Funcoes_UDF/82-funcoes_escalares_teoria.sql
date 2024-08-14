
-- FUNÇÕES ESCALARES (TEORIA)

/*
Funções

Uma função é, basicamente, um objeto que contém um bloco de
comandos Transact-SQL responsável por executar um procedimento
e retornar um valor ou uma séroe de valores, os quais podem
ser retornados para outra função, para um aplicativo, para um
stored procedure ou diretamente para o usuário.
*/


/*
Funções e Stored Procedures

As funções possuem semelhanças com as stored procedures, já
que ambas consistem em uma mandeira simplificada de realizar
consultas complexas. Ambas aceitam parâmetros que permitem
realizar consultas sem conhecimento profundo das estruturas
utilizadas para obter metadados. Além disso, ambas podem
ter sua lógica compartilhada com um ou mais aplicativos e
são executadas no servidor de dados.

Contudo, as funções não podem realizar operações que alterem
dados no sistema. Ao utilizar funções, devemos considerar que
o retorno obtido de uma função pode ser um valor único escalar
ou dados de uma tabela, uma função não aceita como parâmetros
de entrada, dados do tipo cursor, table ou timestamp.
*/


/*
Funções Escalares

As funções escalares retornam um valor único, cujo tipo é
definido por uma cláusula RETURNS. Retornam qualquer valor
exceto os tipos: text, ntext, image, cursor e timestamp.

Uma função escalar pode ser simples, ou seja, o valor escalar
retornado é resultado de uma instrução única. Uma função
escalar pode, também, possuir múltiplas instruções que
retornarão um valor único. Neste caso, o corpo da função
é definido em um bloco BEGIN...END, onde estará contido a
série de instruções.
*/


/*
Estrutura Funções Escalares

CREATE FUNCTION <nome_funcao>
([@nome_parametro[AS]<tipo_parametro>[...])
RETURNS<tipo_retorno>[WITH[ENCRYPTION],[SCHEMABINDING]]
	[AS]
BEGIN
	<corpo_da_funcao>
	RETURN<expresao_escalar>
END
*/


/*
Funções Escalares

* nome_funcao: Representa o nome da função definida pelo usuário.
* @nome_parametro: Representa um parâmetro. Podem ser declarados
um ou mais parâmetros, é possível um limite de 2100 parâmetros
declarados. Se não houver um valor default para o parâmetro, o
valor de cada um deve ser fornecido pelo usuário ao executar a
função. Parâmetros com nomes iguais podem ser usados em diferentes 
funções.
* tipo_parametro: É o tipo de dados do parâmetro.
* tipo_retorno: É o valor de retorno da função. Os tipos timestamp,
cursor e table não são aceitos como retorno.
* ECRYPTION: Define que o texto original da instrução CREATE
FUNCTION será codificado.
* SCHEMABINDING: Associa a função aos objetos de banco de dados
que são referenciados por ela. Desse modo, caso outro objeto
associado ao schema fizer referência à função, ela não sofrerá
alterações.
* corpo_da_funcao: Representa uma série de instruções que define
o valor da função. É importante ressaltar que essas instruções
não podem conter comandos do grupo DML, em que há modificações
de uma tabela.
* expressao_escalar: Define o valor escalar retornado pela função.
*/