import os
import zipfile
import requests
from bs4 import BeautifulSoup

url = 'https://www.gov.br/ans/pt-br/acesso-a-informacao/participacao-da-sociedade/atualizacao-do-rol-de-procedimentos'

pasta_raiz = os.path.abspath(os.path.join(os.getcwd(), '..', '..', '..'))

pasta_dados = os.path.join(pasta_raiz, 'dados')

os.makedirs(pasta_dados, exist_ok=True)

resposta = requests.get(url)

if resposta.status_code == 200:
    print(f'Página acessada com sucesso!')

    soup = BeautifulSoup(resposta.text, 'lxml')
    links = soup.find_all('a', href=True)

    pdf_links = [link['href'] for link in links if ('Anexo_I' in link['href'] or 'Anexo_II' in link['href']) and link['href'].endswith('.pdf')]

    for i, pdf_link in enumerate(pdf_links):
        print(f'Baixando: {pdf_link}...')

        resposta_pdf = requests.get(pdf_link)

        if resposta_pdf.status_code == 200:
            nome_arquivo = f'Anexo{i + 1}.pdf'
            caminho_arquivo = os.path.join(pasta_dados, nome_arquivo)

            with open(caminho_arquivo, 'wb') as pdf:
                pdf.write(resposta_pdf.content)

            print(f'{nome_arquivo} baixado com sucesso.')
        else:
            print(f'Erro ao baixar {pdf_link}')

    caminho_zip = os.path.join(pasta_dados, 'Anexos.zip')

    with zipfile.ZipFile(caminho_zip, 'w', zipfile.ZIP_DEFLATED) as zipf:
        for pdf in os.listdir(pasta_dados):
            if pdf.endswith('.pdf'):
                zipf.write(os.path.join(pasta_dados, pdf), pdf)
                print(f'Adicionado ao ZIP: {pdf}')

    print('Todos arquivos foram compactados com sucesso.')

else:
    print('Erro ao acessar a página.')