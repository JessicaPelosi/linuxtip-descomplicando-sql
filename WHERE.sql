-- Databricks notebook source
SELECT *
FROM silver_olist.pedido

WHERE descSituacao = 'shipped'

-- LIMIT 100

-- leia-se: selecione todas colunas da tabela silver_olist onde a situação do pedido seja entregue 'delivered'

-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido

WHERE descSituacao = 'shipped'
AND year(dtPedido) = '2018'

-- leia-se: selecione todas as colunas da tabela silver_olist filtrando pedidos enviados de 2018

-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido

WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year(dtPedido) = '2018'

-- leia-se: selecione todas as colunas da tabela silver_olist filtrando pedidos enviados ou cancelados de 2018

-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido

WHERE descSituacao IN ('shipped','canceled')
AND year(dtPedido) = '2018'

-- leia-se: selecione todas as colunas da tabela silver_olist filtrando pedidos enviados ou cancelados de 2018

-- COMMAND ----------

SELECT * , datediff(dtEstimativaEntrega, dtAprovado) AS diffDatasAprovadoPrevisao
FROM silver_olist.pedido

WHERE descSituacao IN ('shipped','canceled')
AND year(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega, dtAprovado) > 30
