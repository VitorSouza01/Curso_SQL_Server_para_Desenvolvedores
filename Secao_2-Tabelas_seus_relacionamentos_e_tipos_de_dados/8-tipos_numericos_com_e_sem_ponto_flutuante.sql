
CREATE TABLE TiposNumericos(
	Numero bigint -- -2^53 at� 2^63 -1
	Numero int -- -2^31 at� 2^31
	Numero smallint -- -2^15 at� 2^15
	Numero tinyint -- 0 at� 255
	Booleano bit -- 0=False 1=True Null / 2 = 1 e -5 = 1
	PontoFlutuante decimal (10,2) -- (precis�o, escala) 2,345
	PontoFlutuante numeric (10,2) -- (precis�o, escala) 2,345
	Dinheiro money
	Dinheiro smallmoney
);