
-- Estruturas Condicionais (WHERE)

-- SELECT * FROM TB_PRODUTO WHERE valor = 100;

-- SELECT * FROM TB_PRODUTO WHERE valor = 100 OR Taxa = 0.25;
-- Se uma das expressões forem verdadeiras, toda a condição
-- where é verdadeira.

-- SELECT * FROM TB_PRODUTO WHERE Valor = 100 AND Taxa = 0.25;
-- Somente se todas expressões forem verdadeiras, toda a
-- condição where é verdadeira.


-- Operador OR:
	-- (V) OR (V) = True
	-- (F) OR (V) = True
	-- (V) OR (F) = True
	-- (F) OR (F) = False

-- Operador AND:
	-- (V) AND (V) = True
	-- (F) AND (V) = False
	-- (V) AND (F) = False
	-- (F) AND (F) = False


-- Diretiva NOT:
-- Exemplos:
	-- NOT (Campo_1 = Campo_2 OR Campo_2 = Campo_3)
	-- NOT (Campo_1 = Campo_2 AND Campo_2 = Campo_3)
-- Inverte o valor das estruturas condicionais.


-- Operador OR:
	-- NOT (V) OR (V) = False
	-- NOT (F) OR (V) = False
	-- NOT (V) OR (F) = False
	-- NOT (F) OR (F) = True

-- Operador AND:
	-- NOT (V) AND (V) = False
	-- NOT (F) AND (V) = True
	-- NOT (V) AND (F) = True
	-- NOT (F) AND (F) = True


-- Exemplo:
-- ((NOT (F AND V)) AND (F OR V)) OR V
-- ((NOT (F)) AND (V)) OR V
-- ((V) AND (V)) OR V
-- (V) OR (V)
-- (V)
