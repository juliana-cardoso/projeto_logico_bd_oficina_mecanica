-- criando banco de dados oficina mecância
create schema if not exists oficina_mecanica;
use oficina_mecanica;

-- Criação das tabelas:

CREATE TABLE Clientes (
    IdCliente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    CPF CHAR(11) NOT NULL UNIQUE,
    Endereço VARCHAR(255),
    Telefone VARCHAR(20) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

CREATE TABLE Veiculos (
    IdVeiculo INT PRIMARY KEY AUTO_INCREMENT,
    IdVeiCliente INT NOT NULL,
    Marca VARCHAR(50) NOT NULL,
    Modelo VARCHAR(50) NOT NULL,
    Ano INT NOT NULL,
    Placa VARCHAR(20) NOT NULL,
    CONSTRAINT fk_idVeiCliente_cliente FOREIGN KEY (IdVeiCliente) REFERENCES Clientes(IdCliente)
);

CREATE TABLE Equipes (
    IdEquipe INT PRIMARY KEY AUTO_INCREMENT,
    NomeEquipe VARCHAR(100) NOT NULL
);

CREATE TABLE Mecanicos (
    IdMecanico INT PRIMARY KEY AUTO_INCREMENT,
    NomeMecanico VARCHAR(100) NOT NULL,
    Endereço VARCHAR(255) NOT NULL,
    Telefone VARCHAR(20) NOT NULL,
    CPF CHAR(11) NOT NULL UNIQUE,
    Especialidade VARCHAR(100)
);

CREATE TABLE EquipeMecanicos (
    IdMecEquipe INT NOT NULL,
    IdMecanico INT NOT NULL,
    CONSTRAINT fk_IdMecEquipe_eqpmec FOREIGN KEY (IdMecEquipe) REFERENCES Equipes(IdEquipe),
    FOREIGN KEY fk_IdMecanico_eqpmec (IdMecanico) REFERENCES Mecanicos(IdMecanico),
    PRIMARY KEY (IdMecEquipe, IdMecanico)
);


CREATE TABLE Pecas (
    IdPeca INT PRIMARY KEY AUTO_INCREMENT,
    NomePeca VARCHAR(100) NOT NULL,
    Categoria VARCHAR(50) NOT NULL,
    QuantidadePecas INT NOT NULL,
    Valor DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Servicos (
    IdServico INT PRIMARY KEY AUTO_INCREMENT,
    NomeServico VARCHAR(100) NOT NULL,
    DescriçãoServico VARCHAR(255) NOT NULL,
    Valor DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Autorizacoes (
    IdAutorizacao INT PRIMARY KEY AUTO_INCREMENT,
    IdAuCliente INT NOT NULL,
    DataAutorizacao DATE NOT NULL,
    FOREIGN KEY fk_IdAuCliente_Autorizacao (IdAuCliente) REFERENCES Clientes(IdCliente)
);

CREATE TABLE OrdensServico (
    IdOrdemServico INT PRIMARY KEY AUTO_INCREMENT,
    IdOsVeiculo INT NOT NULL,
    IdOsEquipe INT NOT NULL,
    IdOsAutorizacao INT NOT NULL,
    DataEmissao DATE NOT NULL,
    StatusServiço VARCHAR(50) NOT NULL,
    IdOsPeca INT NOT NULL,
    IdOsServico INT NOT NULL,
    DataConclusao DATE NOT NULL,
    ValorTotal DECIMAL(10, 2) NOT NULL,
    CONSTRAINT fk_IdOsVeiculo_OS FOREIGN KEY (IdOsVeiculo) REFERENCES Veiculos(IdVeiculo),
    CONSTRAINT fk_IdOsEquipe_OS FOREIGN KEY (IdOsEquipe) REFERENCES Equipes(IdEquipe),
    CONSTRAINT fk_IdOsAutorizacao_OS FOREIGN KEY (IdOsAutorizacao) REFERENCES Autorizacoes(IdAutorizacao),
    CONSTRAINT fk_IdOsPeca_OS FOREIGN KEY (IdOsPeca) REFERENCES Pecas(IdPeca),
    CONSTRAINT fk_IdOsServico_OS FOREIGN KEY (IdOsServico) REFERENCES Servicos(IdServico)
);

show tables;