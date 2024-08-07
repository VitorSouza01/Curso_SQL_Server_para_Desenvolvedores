
-- WITH SCHEMABINDING

-- Views
-- WITH SCHEMABINDING: Quando especificamos essa cláusula, a view
-- fica ligada ao esquema (estrutura) da(s) tabela(s) à(s) qual(is)
-- faz referência, então, não podemos fazer modificações na(s)
-- tabela(s) se isto implicar em alterações na definição da view.
-- Para podermos alterar as tabelas temos que tirar as dependências
-- existentes entre view e a tabela, primeiramente temos que 
-- modificar ou remover a dependente da view com a tabela para poder
-- modificar a tabela.


ALTER TABLE TB_FUNCIONARIO
ADD TESTE VARCHAR(50) NULL

SELECT * FROM DBO.TB_FUNCIONARIO

CREATE VIEW VIE_PED2
WITH ENCRYPTION, SCHEMABINDING
AS SELECT F.NomeCompleto,
		P.NumeroPedido,
		P.DataPedido,
		F.TESTE
	FROM DBO.TB_FUNCIONARIO AS F
JOIN DBO.TB_PEDIDO AS P
	ON F.FuncionarioId = P.FuncionarioId

SELECT * FROM VIE_PED2

ALTER TABLE DBO.TB_FUNCIONARIo
DROP COLUMN TESTE