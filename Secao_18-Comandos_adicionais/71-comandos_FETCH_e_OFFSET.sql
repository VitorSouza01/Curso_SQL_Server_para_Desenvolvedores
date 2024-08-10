
-- COMANDOS FETCH e OFFSET

/*
Utilizando as cláusulas FETCH e OFFSET, é possível dividir os resultados das consultas
em várias páginas numeradas. Com este novo recurso, podemos selecionar N linhas
(FETCH) e partir de qualquer posição da tabela. A cláusula ORDER BY é necessária
para a utilização das cláusulas FETCH e OFFSET.
*/

SELECT * FROM TB_PEDIDO
ORDER BY NumeroPedido

SELECT * FROM TB_PEDIDO
ORDER BY NumeroPedido
OFFSET 2 ROWS FETCH NEXT 20 ROWS ONLY
