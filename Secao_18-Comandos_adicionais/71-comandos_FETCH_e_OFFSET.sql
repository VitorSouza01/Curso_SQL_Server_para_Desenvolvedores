
-- COMANDOS FETCH e OFFSET

/*
Utilizando as cl�usulas FETCH e OFFSET, � poss�vel dividir os resultados das consultas
em v�rias p�ginas numeradas. Com este novo recurso, podemos selecionar N linhas
(FETCH) e partir de qualquer posi��o da tabela. A cl�usula ORDER BY � necess�ria
para a utiliza��o das cl�usulas FETCH e OFFSET.
*/

SELECT * FROM TB_PEDIDO
ORDER BY NumeroPedido

SELECT * FROM TB_PEDIDO
ORDER BY NumeroPedido
OFFSET 2 ROWS FETCH NEXT 20 ROWS ONLY
