# IntuitiveCare - Teste de Nivelamento

Este repositório contém o código desenvolvido para o teste de nivelamento da IntuitiveCare. O projeto consiste em quatro partes principais: web scraping, transformação de dados, banco de dados e API, cada uma implementada em pastas separadas.

## Dependências

* Python 3
* MySQL 8.0
* FastAPI
* Vue.js
* Axios
* Pandas (para transformação de dados)
* Beautiful Soup (para web scraping)
* Requests (para web scraping)
* PyPDF2 ou tabula-py (para extração de dados de PDF)

## Informações Adicionais

* Os arquivos `.sln` nas pastas são arquivos de solução do Visual Studio e podem ser ignorados se você não estiver usando o Visual Studio.
* Todos os arquivos de dados utilizados ou gerados estão na pasta `dados`.
* A coleção do Postman para testar a API está na pasta `ferramentas`.

## Instruções de Execução

Cada etapa tem um README com instruções para execução.

## Estrutura do Projeto

IntuitiveCare/
├── dados/
│   ├── relatorio_cadop.csv
│   ├── dados_extraidos.csv
│   ├── dados_modificados.csv
│   ├── ... (outros arquivos .csv)
│   ├── anexo1.pdf
│   ├── anexo2.pdf
│   ├── anexos.zip
│   ├── teste_Bernardo_Ianiak.csv
├── src/
│   ├── 01_web_scraping/
│   │   ├── 01_web_scraping.sln
│   │   ├── 01_web_scraping/
│   │   │   ├── 01_web_scraping.py
│   │   ├── README.md
│   ├── 02_transformacao_dados/
│   │   ├── 02_transformacao_dados.sln
│   │   ├── 02_transformacao_dados/
│   │   │   ├── 02_transformacao_dados.py
│   │   ├── README.md
│   ├── 03_banco_de_dados/
│   │   ├── criacao_tabelas.sql
│   │   ├── importacao_dados.sql
│   │   ├── queries_analiticas.sql
│   │   ├── README.md
│   ├── 04_API/
│   │   ├── backend/
│   │   │   ├── main/
│   │   │   │   ├── main.py
│   │   ├── frontend/
│   │   │   ├── vue-app/
│   │   │   │   ├── src/
│   │   │   │   │   ├── App.vue
│   │   │   │   │   └── ...
│   │   ├── README.md
├── ferramentas/
│   ├── colecao_postman.json
├── .gitignore
├── README.md

