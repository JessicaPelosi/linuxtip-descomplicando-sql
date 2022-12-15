-- Databricks notebook source
SELECT COUNT(*) AS nrLinhasNaoNulas-- linhas não nulas
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
    COUNT(*) AS nrLinhasNaoNulas, -- linhas não nulas
    COUNT(idCliente) AS nrIdClienteNaoNulo
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
    COUNT(*) AS nrLinhasNaoNulas, -- linhas não nulas
    COUNT(idCliente) AS nrIdClienteNaoNulo, -- id de clientes não nulos
    COUNT(distinct idCliente) AS nrIdClienteDistinto -- id de clientes distintos
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
    COUNT(*) AS nrLinhasNaoNulas, -- linhas não nulas
    COUNT(idCliente) AS nrIdClienteNaoNulo, -- id de clientes não nulos
    COUNT(DISTINCT idCliente) AS nrIdClienteDistinto, -- id de clientes distintos
    
    COUNT(idClienteUnico) AS nrIdClienteUnico,
    COUNT(DISTINCT idClienteUnico) AS nrIdClienteUnicoDistintos -- id de clientes unicos distintos
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
    COUNT(*) AS qtLinhas,
    COUNT(DISTINCT idCliente) AS qtClientes,
    COUNT(DISTINCT idClienteUnico) AS qtClientesUnicos
    
FROM silver_olist.cliente

WHERE descCidade IN ('presidente prudente', 'curitiba')

-- COMMAND ----------

SELECT 
    ROUND( AVG(vlPreco), 2) AS avgPreco, -- média da coluna vlPreco (preço médio dos produtos)
    
    INT(PERCENTILE(vlPreco, 0.5)) AS medianPreco, -- preço mediano dos produto
    
    MAX(vlPreco) AS maxPreco, -- máximo da coluna vlPreco
    AVG(vlFrete) AS avgFrete, -- média da coluna vlFrete
    MAX(vlFrete) AS maxFrete,
    MIN(vlFrete) AS minFrete

FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT COUNT(*) 
FROM silver_olist.cliente
WHERE descUf = 'MT'
