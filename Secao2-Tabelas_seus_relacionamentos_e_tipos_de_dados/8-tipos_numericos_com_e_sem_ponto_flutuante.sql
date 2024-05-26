
CREATE TABLE TiposNumericos(
	Numero bigint -- -2^53 até 2^63 -1
	Numero int -- -2^31 até 2^31
	Numero smallint -- -2^15 até 2^15
	Numero tinyint -- 0 até 255
	Booleano bit -- 0=False 1=True Null / 2 = 1 e -5 = 1
	PontoFlutuante decimal (10,2) -- (precisão, escala) 2,345
	PontoFlutuante numeric (10,2) -- (precisão, escala) 2,345
	Dinheiro money
	Dinheiro smallmoney
);