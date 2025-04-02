# Web Scraping

Este script Python realiza o web scraping do site https://www.gov.br/ans/pt-br/acesso-a-informacao/participacao-da-sociedade/atualizacao-do-rol-de-procedimentos para baixar os anexos I e II em formato PDF e compactá-los em um arquivo ZIP.

## Instruções de Execução

1.  Certifique-se de que o Python 3 esteja instalado.
2.  Instale as bibliotecas necessárias: `pip install requests beautifulsoup4 zipfile`.
3.  Navegue até a pasta `src/01_web_scraping`.
4.  Abra o arquivo `01_web_scraping.sln` no Visual Studio (se necessário).
5.  Execute o script `01_web_scraping.py`: `python 01_web_scraping.py`.
6.  Os arquivos PDF baixados (`anexo1.pdf` e `anexo2.pdf`) e o arquivo ZIP compactado (`anexos.zip`) serão salvos na pasta `dados`.

## Bibliotecas

* Requests
* Beautiful Soup
* zipfile

## Dados

* Nenhum arquivo de dados externo é necessário.

## Informações Adicionais

* O script compacta os arquivos PDF baixados em um arquivo ZIP chamado `Anexos.zip`.
* O arquivo `.sln` é um arquivo de solução do Visual Studio e pode ser ignorado se você não estiver usando o Visual Studio.
