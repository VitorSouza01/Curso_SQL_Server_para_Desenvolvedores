
-- LA�O DE REPETI��O

-- Exemplo 1:
DECLARE @NUM INT = 10;

WHILE(@NUM >= 0)
BEGIN
	IF @NUM = 5
	BEGIN
		PRINT 'IGUAL A 5, CONTINUE'
		SET @NUM  -= 1;
		CONTINUE
		PRINT ('N�O EXECUTA C�DIGO')
	END

	PRINT @NUM;

	SET @NUM -= 1;

	IF @NUM = 2
	BEGIN
		PRINT 'IGUAL A 2, BREAK'
		BREAK
	END
END


-- Exemplo 2:
DECLARE @T INT =1, @N INT;
WHILE @T <= 10
BEGIN
	PRINT 'TABUADA DO ' + CAST(@T AS VARCHAR(2));
	PRINT '';
	SET @N = 1;
	WHILE @N <= 10
	BEGIN
		PRINT CAST(@T AS VARCHAR(2)) + ' x ' + CAST(@N AS VARCHAR(2)) + ' = ' + CAST(@T*@N AS VARCHAR(3));
		SET @N += 1;
	END
	SET @T += 1;
	PRINT ''
END


-- Exemplo 3:
DECLARE @DEZENA INT, @CONT INT = 1;

WHILE @CONT <= 6
BEGIN
	SET @DEZENA = 1 + 60 * RAND();
	PRINT @DEZENA;
	SET @CONT += 1;
END

PRINT 'BOA SORTE';
