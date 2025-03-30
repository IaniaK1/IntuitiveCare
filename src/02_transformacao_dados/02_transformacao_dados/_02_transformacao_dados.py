import pdfplumber
import pandas as pd
import os
import zipfile

pasta_dados = os.path.abspath(os.path.join(os.getcwd(), '..', '..', '..', 'dados'))

os.makedirs(pasta_dados, exist_ok=True)

pdf_nome = os.path.join(pasta_dados, 'Anexo1.pdf')

dados = []

with pdfplumber.open(pdf_nome) as pdf:
    for pagina in pdf.pages:
        tabelas = pagina.extract_tables()
        for tabela in tabelas:
            for linha in tabela:
                dados.append(linha)

dataframe = pd.DataFrame(dados)

csv_nome = os.path.join(pasta_dados, 'dados_extraidos.csv')

dataframe.to_csv(csv_nome, index=False, encoding='utf-8')

print(f'Arquivo CSV criado: {csv_nome}')

zip_nome = os.path.join(pasta_dados, 'Teste_Bernardo_Ianiak.zip')
with zipfile.ZipFile(zip_nome, 'w', zipfile.ZIP_DEFLATED) as zipf:
    zipf.write(csv_nome, os.path.basename(csv_nome))

print(f'Arquivo ZIP criado: {zip_nome}')

dataframe.replace({"OD": "Odontológico", "AMB": "Ambulatorial"}, inplace=True)

csv_modificado_nome = os.path.join(pasta_dados, 'dados_modificados.csv')
dataframe.to_csv(csv_modificado_nome, index=False, encoding='utf-8')

print(f'Arquivo CSV modificado criado: {csv_modificado_nome}')