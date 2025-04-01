# Transformação de Dados

Este script Python extrai os dados da tabela "Rol de Procedimentos e Eventos em Saúde" do PDF do Anexo I (baixado na etapa de web scraping), salva os dados em um arquivo CSV e compacta o CSV em um arquivo ZIP.

## Instruções de Execução

1.  Certifique-se de que o Python 3 esteja instalado.
2.  Instale as bibliotecas necessárias: `pip install pandas zipfile pdfplumber`.
3.  Navegue até a pasta `src/02_transformacao_dados`.
4.  Abra o arquivo `02_transformacao_dados.sln` no Visual Studio (se necessário).
5.  Execute o script `02_transformacao_dados.py`: `python 02_transformacao_dados.py`.
6.  O arquivo CSV gerado (`dados_extraidos.csv`) e o arquivo ZIP compactado (`teste_Bernardo_Ianiak.zip`) serão salvos na pasta `dados`.

## Bibliotecas

* Pandas
* Zipfile
* Pdfplumber

## Dados

* O arquivo `anexo1.pdf` (baixado na etapa de web scraping) é necessário na pasta `dados`.

## Informações Adicionais

* O script substitui as abreviações das colunas OD e AMB pelas descrições completas, conforme a legenda no rodapé do PDF.
* O arquivo `.sln` é um arquivo de solução do Visual Studio e pode ser ignorado se você não estiver usando o Visual Studio.