# Banco de Dados

Esta pasta contém os scripts SQL para criar as tabelas necessárias, importar os dados dos arquivos CSV e executar as queries analíticas.

## Instruções de Execução

1.  Certifique-se de que o MySQL 8.0 esteja instalado e em execução.
2.  Execute os scripts SQL na seguinte ordem:
    * `criacao_tabelas.sql`: Cria as tabelas `Dados_Cadastrais_Operadoras` e `Demonstracoes_Contabeis`.
    * `importacao_dados.sql`: Importa os dados dos arquivos CSV (`relatorio_cadop.csv` e arquivos com prefixo "Demonstracoes" na pasta `dados`) para as tabelas criadas.
    * `queries_analiticas.sql`: Executa as queries analíticas para responder às perguntas sobre as despesas das operadoras.

## Dados

* Os arquivos CSV necessários devem estar presentes na pasta `dados`:
    * `relatorio_cadop.csv`
    * Arquivos com prefixo "Demonstracoes" (por exemplo, "Demonstracoes 1T2023.csv", "Demonstracoes 1T2024.csv").

## Informações Adicionais

* Os scripts SQL são compatíveis com MySQL 8.0.
* Certifique-se de ajustar os caminhos dos arquivos CSV nos scripts de importação, se necessário.
* Os arquivos com prefixo "Demonstracoes" contêm os dados das demonstrações contábeis.