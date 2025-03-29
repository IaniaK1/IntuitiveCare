import pdfplumber
import pandas as pd

pdfNome = 'Anexo1.pdf'

dados = []

with pdfplumber.open(pdfNome) as pdf:
    for pagina in pdf.pages:
        tabelas = pagina.extract_tables()

        for tabela in tabelas:
            for linha in tabela:
                dados.append(linha)

dataframe = pd.DataFrame(dados)

csvNome = 'dados_extraidos.csv'
dataframe.to_csv(csvNome, index=False, encoding='utf-8')

print(f'Arquivo CSV criado: {csvNome}')