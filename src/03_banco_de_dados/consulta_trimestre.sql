SELECT 
    CASE WHEN o.Nome_Fantasia = '' THEN o.Razao_Social ELSE o.Nome_Fantasia END AS Operadora,
    SUM(d.VL_SALDO_FINAL) AS Total_Despesas
FROM 
    Demonstracoes_Contabeis d
INNER JOIN 
    Dados_Cadastrais_Operadoras o
ON 
    d.REG_ANS = o.Registro_ANS
WHERE 
    d.DESCRICAO LIKE "%EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR%"
AND 
    d.DATA BETWEEN '2024-07-01' AND '2024-10-01'
GROUP BY 
    Operadora
ORDER BY 
    Total_Despesas DESC
LIMIT 10;