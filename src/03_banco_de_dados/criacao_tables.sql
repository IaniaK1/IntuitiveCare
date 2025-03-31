CREATE TABLE Demonstracoes_Contabeis (
	ID BIGINT auto_increment NOT NULL,
    `DATA` DATE,
    REG_ANS INT,
    CD_CONTA_CONTABIL VARCHAR(50),
    DESCRICAO TEXT,
    VL_SALDO_INICIAL DECIMAL(15,2),
    VL_SALDO_FINAL DECIMAL(15,2),
    CONSTRAINT Demonstracoes_Contabeis_pk PRIMARY KEY (ID)
);

CREATE TABLE Dados_Cadastrais_Operadoras (
	ID BIGINT auto_increment NOT NULL,
    Registro_ANS INT,
    CNPJ VARCHAR(18),
    Razao_Social VARCHAR(255),
    Nome_Fantasia VARCHAR(255),
    Modalidade VARCHAR(100),
    Logradouro VARCHAR(255),
    Numero VARCHAR(10),
    Complemento VARCHAR(255),
    Bairro VARCHAR(100),
    Cidade VARCHAR(100),
    UF CHAR(2),
    CEP VARCHAR(10),
    DDD VARCHAR(3),
    Telefone VARCHAR(20),
    Fax VARCHAR(20),
    Endereco_Eletronico VARCHAR(255),
    Representante VARCHAR(255),
    Cargo_Representante VARCHAR(255),
    Regiao_de_Comercializacao TEXT,
    Data_Registro_ANS DATE,
    CONSTRAINT Dados_Cadastrais_Operadoras_pk PRIMARY KEY (ID)
);