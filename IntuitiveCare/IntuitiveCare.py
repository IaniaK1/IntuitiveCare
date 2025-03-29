import os
import zipfile
import requests
from bs4 import BeautifulSoup

url = 'https://www.gov.br/ans/pt-br/acesso-a-informacao/participacao-da-sociedade/atualizacao-do-rol-de-procedimentos'

resposta = requests.get(url)

if resposta.status_code == 200:
    print(f'Pagina acessada!')

    soup = BeautifulSoup(resposta.text, 'lxml')

    links = soup.find_all('a', href=True)

    pdf_links = []
    for link in links:
        href = link['href']
        if ('Anexo_I' in href or 'Anexo_II' in href) and '.pdf' in href:
            pdf_links.append(href)

    for i in range(len(pdf_links)):
        print(f'Link encontrado: {pdf_links[i]}, baixando...')
        resposta = requests.get(pdf_links[i])
        pdf = open('Anexo'+str(i + 1)+'.pdf', 'wb')
        pdf.write(resposta.content)
        pdf.close()
        print(f'Anexo {i + 1} baixado.')

    with zipfile.ZipFile('Anexos.zip', 'w', zipfile.ZIP_DEFLATED) as zipf:
        for pdf in os.listdir():
            if pdf.endswith('.pdf'):
                zipf.write(pdf)
                print(f'Adicionado ao ZIP: {pdf}')

    print(f'Todos arquivos adicionados com sucesso.')
        
else:
    print(f'Erro ao acessar a pagina.')