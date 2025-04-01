from datetime import date
from fastapi import FastAPI, Query
import mysql.connector
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["http://localhost:5173"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

db_config = {
    "host": "localhost",
    "user": "root",
    "password": "root",
    "database": "ans_data"
}

@app.get("/operadoras/")
def buscar_operadoras(termo: str = Query(..., min_length=2)):
    conexao = mysql.connector.connect(**db_config)
    cursor = conexao.cursor(dictionary=True)

    query = """
    SELECT * FROM dados_cadastrais_operadoras
    WHERE Razao_Social LIKE %s OR Nome_Fantasia LIKE %s
    LIMIT 10
    """
    cursor.execute(query, (f"%{termo}%", f"%{termo}%"))
    resultado = cursor.fetchall()

    cursor.close()
    conexao.close()
    return resultado

@app.get("/despesas/")
def maiores_despesas(data_inicial: date = Query(..., description="Data inicial em formato YYYY-MM-DD"),
    data_final: date = Query(..., description="Data final em formato YYYY-MM-DD")):
    conexao = mysql.connector.connect(**db_config)
    cursor = conexao.cursor(dictionary=True)

    query = f"""
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
        d.DATA BETWEEN '{data_inicial}' AND '{data_final}'
    GROUP BY
        Operadora
    ORDER BY
        Total_Despesas DESC
    LIMIT 10;
    """
    cursor.execute(query)
    resultado = cursor.fetchall()

    cursor.close()
    conexao.close()
    return resultado