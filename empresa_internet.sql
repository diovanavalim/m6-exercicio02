CREATE DATABASE empresa_internet;

use empresa_internet;

CREATE TABLE Planos (
	id int NOT NULL auto_increment,
    velocidade_mpbs bigint,
    preco double,
    desconto double,
    PRIMARY KEY (id)
);

CREATE TABLE Cidades (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255),
    uf VARCHAR(255),
    codigo_postal VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE Clientes (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255),
    sobrenome VARCHAR(255),
    data_nascimento DATE,
    id_cidade INT,
    id_plano INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_plano)
        REFERENCES Planos (id),
	FOREIGN KEY (id_cidade)
		REFERENCES Cidades (id)
);
