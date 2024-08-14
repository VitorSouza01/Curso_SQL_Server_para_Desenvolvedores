
-- FUN��ES TABULARES (TEORIA)

/*
Fun��es Tabulares

Fun��es tabulares s�o aquelas que, utilizando uma cl�usula SELECT
para retornar um conjunto de resultados em forma de tabela. Ou
seja , o valor retornado por uma fun��o tabular � do tipo table.

As fun��es tabulares podem ser categorizadas como fun��es tabulares
in-line ou como fun��es tabulares com v�rias instru��es.
*/


/*
Fun��es Tabulares In-Line

Uma fun��o tabular in-line n�o possui corpo de fun��o e pode ser
utilizada para conseguir a funcionalidade de views, por�m com a
utiliza��o de par�metros.

CREATE FUNCTION <nome_funcao>
([@nome_parametro [AS] <tipo_parametro> [...])
RETURNS TABLE [WITH[ENCRYOTION][SCHEMABINDING]]
[AS]
RETURN [(]<instrucao_select>[)]
*/


/*
Fun��es Tabulares C/ V�rias Instru��es

Uma fun��o tabular pode possuir uma ou v�rias instru��es select e/ou
views que pode utilizar m�ltiplas instru��es T-SQL para construir uma
tabela, inserindo as linhas das diversas dessas instru��es � tabela
retornada. E, da mesma forma que uma view, pode ser usada em uma cl�usula
FROM em uma instru��o.

CREATE FUNCTION <nome_funcao>
([@nome_parametro [AS] <tipo_parametro>[...])
RETURNS [@variavel_tabular] TABLE[<estrutura>][WITH[ENCRYPTION]
[SCHEMABINDING]]
[AS]
BEGIN
	<corpo_da_funcao>
	RETURN
END
*/


/*
Fun��es Tabulares C/ V�rias Instru��es

CREATE FUNCTION <nome_funcao>
([@nome_parametro [AS] <tipo_parametro>[...])
RETURNS [@variavel_tabular] TABLE[<estrutura>][WITH[ENCRYPTION]
[SCHEMABINDING]]
[AS]
BEGIN
	<corpo_da_funcao>
	RETURN
END
*/


/*
Fun��es Tabulares C/ V�rias Instru��es

@variavel_tabular: Representa uma vari�vel TABLE que armazena
linhas que deveriam ser retornadas como valor da fun��o.
/*