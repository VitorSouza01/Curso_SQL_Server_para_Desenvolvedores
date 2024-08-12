
-- CONTROLE DE FLUXO 1

/*
BEGIN/END

Os elementos BEGIN e END são utilizados por instruções de controle de
fluxo para delimitar um bloco de instruções, ou seja, iniciar e finalizar,
respectivamente, um bloco de comandos, de maneira que este possa ser
posteriormente executado.
*/


/*
IF/ELSE

Os elementos IF e ELSE do SQL Server são utilizados para testar condições
quando um comando Transact-SQL é executado. IF e ELSE funcionam similarmente
aos mesmos comados utilizados em outras linguagens de programação para testar
condições de execução de comandos.


EXTRUTURA:

A sintaxe para a utilização de IF e ELSE é a seguinte:
IF expressao_booleana
{comando_sql | bloco_comando}
[ ELSE
{comando sql| bloco_comando}]
*/


-- EXEMPLO 01
DECLARE @A INT = 10, @B INT = 15;
IF @A > @B
	BEGIN
		PRINT @A;
		PRINT 'É MAIOR QUE';
		PRINT @B;
	END
PRINT 'CONTINUAÇÃO DO CÓDIGO'

-- EXEMPLO 02
SET @A = 15;
SET @B = 10;
IF @A > @B
	BEGIN
		PRINT @A;
		PRINT 'É MAIOR QUE';
		PRINT @B;
	END
PRINT 'CONTINUAÇÃO DO CÓDIGO'

-- EXEMPLO 3
DECLARE @A INT = 15, @B INT = 10;
IF @A > @B
	BEGIN
		PRINT @A;
		PRINT 'É MAIOR QUE;'
		PRINT @B;
	END
ELSE
	BEGIN
		PRINT @A;
		PRINT 'NÃO É MAIOR QUE';
		PRINT @B;
	END
PRINT 'CONTINUAÇÃO DO CÓDIGO'


DECLARE @A INT = 10, @B INT = 15;
IF @A > @B
	BEGIN
		PRINT @A;
		PRINT 'É MAIOR QUE;'
		PRINT @B;
	END
ELSE
	BEGIN
		PRINT @A;
		PRINT 'NÃO É MAIOR QUE';
		PRINT @B;
	END
PRINT 'CONTINUAÇÃO DO CÓDIGO'