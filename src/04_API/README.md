# API

Esta pasta contém o código do back-end (FastAPI) e do front-end (Vue.js) da API.

## Instruções de Execução

### Back-end (FastAPI)

1.  Navegue até a pasta `src/04_API/backend/main`.
2.  Instale as dependências: `pip install fastapi mysql-connector-python uvicorn fastapi[all]`.
3.  Execute o servidor FastAPI: `uvicorn main:app --reload`.

### Front-end (Vue.js)

1.  Navegue até a pasta `src/04_API/frontend/vue-app`.
2.  Instale as dependências: `npm install`, `npm install axios`.
3.  Execute o front-end Vue.js: `npm run dev`.
4.  Abra o navegador e acesse a URL exibida no terminal.

### Postman

1.  Importe a coleção do Postman em `ferramentas/rotas.postman_collection.json` para testar a API.

## Dados

* O arquivo `relatorio_cadop.csv` deve estar presente na pasta `dados`.

## Informações Adicionais

* O back-end expõe dois endpoints: `/operadoras/` (para busca textual) e `/despesas/` (para buscar maiores despesas por período).
* O front-end Vue.js consome os endpoints do back-end para exibir os resultados na interface.
* A coleção do Postman demonstra como usar os endpoints da API.
