
-- FUN��ES ESCALARES (TEORIA)

/*
Fun��es

Uma fun��o �, basicamente, um objeto que cont�m um bloco de
comandos Transact-SQL respons�vel por executar um procedimento
e retornar um valor ou uma s�roe de valores, os quais podem
ser retornados para outra fun��o, para um aplicativo, para um
stored procedure ou diretamente para o usu�rio.
*/


/*
Fun��es e Stored Procedures

As fun��es possuem semelhan�as com as stored procedures, j�
que ambas consistem em uma mandeira simplificada de realizar
consultas complexas. Ambas aceitam par�metros que permitem
realizar consultas sem conhecimento profundo das estruturas
utilizadas para obter metadados. Al�m disso, ambas podem
ter sua l�gica compartilhada com um ou mais aplicativos e
s�o executadas no servidor de dados.

Contudo, as fun��es n�o podem realizar opera��es que alterem
dados no sistema. Ao utilizar fun��es, devemos considerar que
o retorno obtido de uma fun��o pode ser um valor �nico escalar
ou dados de uma tabela, uma fun��o n�o aceita como par�metros
de entrada, dados do tipo cursor, table ou timestamp.
*/


/*
Fun��es Escalares

As fun��es escalares retornam um valor �nico, cujo tipo �
definido por uma cl�usula RETURNS. Retornam qualquer valor
exceto os tipos: text, ntext, image, cursor e timestamp.

Uma fun��o escalar pode ser simples, ou seja, o valor escalar
retornado � resultado de uma instru��o �nica. Uma fun��o
escalar pode, tamb�m, possuir m�ltiplas instru��es que
retornar�o um valor �nico. Neste caso, o corpo da fun��o
� definido em um bloco BEGIN...END, onde estar� contido a
s�rie de instru��es.
*/


/*
Estrutura Fun��es Escalares

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
Fun��es Escalares

* nome_funcao: Representa o nome da fun��o definida pelo usu�rio.
* @nome_parametro: Representa um par�metro. Podem ser declarados
um ou mais par�metros, � poss�vel um limite de 2100 par�metros
declarados. Se n�o houver um valor default para o par�metro, o
valor de cada um deve ser fornecido pelo usu�rio ao executar a
fun��o. Par�metros com nomes iguais podem ser usados em diferentes 
fun��es.
* tipo_parametro: � o tipo de dados do par�metro.
* tipo_retorno: � o valor de retorno da fun��o. Os tipos timestamp,
cursor e table n�o s�o aceitos como retorno.
* ECRYPTION: Define que o texto original da instru��o CREATE
FUNCTION ser� codificado.
* SCHEMABINDING: Associa a fun��o aos objetos de banco de dados
que s�o referenciados por ela. Desse modo, caso outro objeto
associado ao schema fizer refer�ncia � fun��o, ela n�o sofrer�
altera��es.
* corpo_da_funcao: Representa uma s�rie de instru��es que define
o valor da fun��o. � importante ressaltar que essas instru��es
n�o podem conter comandos do grupo DML, em que h� modifica��es
de uma tabela.
* expressao_escalar: Define o valor escalar retornado pela fun��o.
*/