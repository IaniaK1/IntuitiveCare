LOAD DATA LOCAL INFILE 'C:/Users/Bernardo/Desktop/IntuitiveCare/IntuitiveCare/dados/Demonstracoes 1T2023.csv'
INTO TABLE Demonstracoes_Contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    `DATA`,
    REG_ANS,
    CD_CONTA_CONTABIL,
    DESCRICAO,
    VL_SALDO_INICIAL,
    VL_SALDO_FINAL
);

LOAD DATA LOCAL INFILE 'C:/Users/Bernardo/Desktop/IntuitiveCare/IntuitiveCare/dados/Demonstracoes 1T2024.csv'
INTO TABLE Demonstracoes_Contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    `DATA`,
    REG_ANS,
    CD_CONTA_CONTABIL,
    DESCRICAO,
    VL_SALDO_INICIAL,
    VL_SALDO_FINAL
);

LOAD DATA LOCAL INFILE 'C:/Users/Bernardo/Desktop/IntuitiveCare/IntuitiveCare/dados/Demonstracoes 2t2023.csv'
INTO TABLE Demonstracoes_Contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    `DATA`,
    REG_ANS,
    CD_CONTA_CONTABIL,
    DESCRICAO,
    VL_SALDO_INICIAL,
    VL_SALDO_FINAL
);

LOAD DATA LOCAL INFILE 'C:/Users/Bernardo/Desktop/IntuitiveCare/IntuitiveCare/dados/Demonstracoes 2T2024.csv'
INTO TABLE Demonstracoes_Contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    `DATA`,
    REG_ANS,
    CD_CONTA_CONTABIL,
    DESCRICAO,
    VL_SALDO_INICIAL,
    VL_SALDO_FINAL
);

LOAD DATA LOCAL INFILE 'C:/Users/Bernardo/Desktop/IntuitiveCare/IntuitiveCare/dados/Demonstracoes 3T2023.csv'
INTO TABLE Demonstracoes_Contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    `DATA`,
    REG_ANS,
    CD_CONTA_CONTABIL,
    DESCRICAO,
    VL_SALDO_INICIAL,
    VL_SALDO_FINAL
);

LOAD DATA LOCAL INFILE 'C:/Users/Bernardo/Desktop/IntuitiveCare/IntuitiveCare/dados/Demonstracoes 3T2024.csv'
INTO TABLE Demonstracoes_Contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    `DATA`,
    REG_ANS,
    CD_CONTA_CONTABIL,
    DESCRICAO,
    VL_SALDO_INICIAL,
    VL_SALDO_FINAL
);

LOAD DATA LOCAL INFILE 'C:/Users/Bernardo/Desktop/IntuitiveCare/IntuitiveCare/dados/Demonstracoes 4T2023.csv'
INTO TABLE Demonstracoes_Contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    `DATA`,
    REG_ANS,
    CD_CONTA_CONTABIL,
    DESCRICAO,
    VL_SALDO_INICIAL,
    VL_SALDO_FINAL
);

LOAD DATA LOCAL INFILE 'C:/Users/Bernardo/Desktop/IntuitiveCare/IntuitiveCare/dados/Demonstracoes 4T2024.csv'
INTO TABLE Demonstracoes_Contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    `DATA`,
    REG_ANS,
    CD_CONTA_CONTABIL,
    DESCRICAO,
    VL_SALDO_INICIAL,
    VL_SALDO_FINAL
);

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/dados/Relatorio_cadop.csv'
INTO TABLE Dados_Cadastrais_Operadoras
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    Registro_ANS,
    CNPJ,
    Razao_Social,
    Nome_Fantasia,
    Modalidade,
    Logradouro,
    Numero,
    Complemento,
    Bairro,
    Cidade,
    UF,
    CEP,
    DDD,
    Telefone,
    Fax,
    Endereco_Eletronico,
    Representante,
    Cargo_Representante,
    Regiao_de_Comercializacao,
    Data_Registro_ANS
);