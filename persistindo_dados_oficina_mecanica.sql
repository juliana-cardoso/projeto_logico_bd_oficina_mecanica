-- persistindo dados no banco de dados oficina mecânica:
use oficina_mecanica;
-- Inserção de dados fictícios na tabela Clientes
ALTER TABLE Clientes auto_increment=1;
INSERT INTO Clientes (Nome, CPF, Endereço, Telefone, Email) VALUES 
		('João Silva', '12345678901', 'Rua A, 123', '123456789', 'joao@example.com'),
		('Maria Oliveira', '23456789012', 'Rua B, 456', '987654321', 'maria@example.com'),
		('Carlos Pereira', '34567890123', 'Rua C, 789', '456789123', 'carlos@example.com'),
		('Ana Souza', '45678901234', 'Rua D, 101', '789123456', 'ana@example.com'),
		('Pedro Santos', '56789012345', 'Rua E, 202', '321654987', 'pedro@example.com'),
		('Fernanda Lima', '67890123456', 'Rua F, 303', '654987321', 'fernanda@example.com'),
		('Ricardo Alves', '78901234567', 'Rua G, 404', '987321654', 'ricardo@example.com'),
		('Juliana Costa', '89012345678', 'Rua H, 505', '123789456', 'juliana@example.com'),
		('Roberto Nunes', '90123456780', 'Rua I, 606', '456123789', 'roberto@example.com'),
		('Patrícia Mendes', '01234567891', 'Rua J, 707', '789456123', 'patricia@example.com'),
		('Gustavo Ferreira', '11234567892', 'Rua K, 808', '321987654', 'gustavo@example.com'),
		('Camila Rocha', '22345678903', 'Rua L, 909', '654321987', 'camila@example.com'),
		('Marcos Silva', '33456789014', 'Rua M, 1010', '987654123', 'marcos@example.com'),
		('Beatriz Martins', '44567890125', 'Rua N, 1111', '123456987', 'beatriz@example.com'),
		('Lucas Almeida', '55678901236', 'Rua O, 1212', '456789321', 'lucas@example.com'),
		('Larissa Gomes', '66789012347', 'Rua P, 1313', '789123654', 'larissa@example.com'),
		('Thiago Ribeiro', '77890123458', 'Rua Q, 1414', '321654123', 'thiago@example.com'),
		('Isabela Fernandes', '88901234569', 'Rua R, 1515', '654987123', 'isabela@example.com'),
		('Felipe Carvalho', '99012345670', 'Rua S, 1616', '987321456', 'felipe@example.com'),
		('Vanessa Lima', '10123456781', 'Rua T, 1717', '123789654', 'vanessa@example.com'),
		('Eduardo Costa', '11123456782', 'Rua U, 1818', '456123987', 'eduardo@example.com'),
		('Renata Souza', '12123456783', 'Rua V, 1919', '789456321', 'renata@example.com'),
		('Bruno Oliveira', '13123456784', 'Rua W, 2020', '321987123', 'bruno@example.com'),
		('Carolina Mendes', '14123456785', 'Rua X, 2121', '654321789', 'carolina@example.com'),
		('Daniel Ferreira', '15123456786', 'Rua Y, 2222', '987654321', 'daniel@example.com'),
		('Aline Rocha', '16123456787', 'Rua Z, 2323', '123456123', 'aline@example.com'),
		('Rafael Silva', '17123456788', 'Rua AA, 2424', '456789456', 'rafael@example.com'),
		('Tatiana Martins', '18123456789', 'Rua BB, 2525', '789123789', 'tatiana@example.com'),
		('Gabriel Almeida', '19123456790', 'Rua CC, 2626', '321654321', 'gabriel@example.com'),
		('Amanda Gomes', '20123456791', 'Rua DD, 2727', '654987654', 'amanda@example.com');

-- Inserção de dados fictícios na tabela Veiculos:
ALTER TABLE Veiculos auto_increment=1;
INSERT INTO Veiculos (IdVeiCliente, Marca, Modelo, Ano, Placa) VALUES 
		(1, 'Toyota', 'Corolla', 2020, 'ABC-1234'),
		(2, 'Honda', 'Civic', 2019, 'DEF-5678'),
		(3, 'Ford', 'Focus', 2018, 'GHI-9012'),
		(4, 'Chevrolet', 'Cruze', 2021, 'JKL-3456'),
		(5, 'Volkswagen', 'Golf', 2017, 'MNO-7890'),
		(6, 'Hyundai', 'Elantra', 2022, 'PQR-1234'),
		(7, 'Nissan', 'Sentra', 2016, 'STU-5678'),
		(8, 'Kia', 'Cerato', 2015, 'VWX-9012'),
		(9, 'Renault', 'Megane', 2014, 'YZA-3456'),
		(10, 'Peugeot', '308', 2013, 'BCD-7890'),
		(11, 'Fiat', 'Bravo', 2012, 'EFG-1234'),
		(12, 'Citroen', 'C4', 2011, 'HIJ-5678'),
		(13, 'BMW', '320i', 2010, 'KLM-9012'),
		(14, 'Mercedes-Benz', 'C180', 2009, 'NOP-3456'),
		(15, 'Audi', 'A4', 2008, 'QRS-7890'),
		(16, 'Volvo', 'S60', 2007, 'TUV-1234'),
		(17, 'Jaguar', 'XE', 2006, 'WXY-5678'),
		(18, 'Land Rover', 'Discovery', 2005, 'ZAB-9012'),
		(19, 'Subaru', 'Impreza', 2004, 'CDE-3456'),
		(20, 'Mazda', '3', 2003, 'FGH-7890'),
		(21, 'Mitsubishi', 'Lancer', 2002, 'IJK-1234'),
		(22, 'Suzuki', 'Swift', 2001, 'LMN-5678'),
		(23, 'Jeep', 'Compass', 2000, 'OPQ-9012'),
		(24, 'Dodge', 'Charger', 1999, 'RST-3456'),
		(25, 'Chrysler', '300', 1998, 'UVW-7890'),
		(26, 'Tesla', 'Model 3', 2023, 'XYZ-1234'),
		(27, 'Ferrari', '488', 2022, 'ABC-5678'),
		(28, 'Lamborghini', 'Huracan', 2021, 'DEF-9012'),
		(29, 'Porsche', '911', 2020, 'GHI-3456'),
		(30, 'McLaren', '720S', 2019, 'JKL-7890');
select * from veiculos;

-- Inserção de dados fictícios na tabela Equipes:
ALTER TABLE Equipes auto_increment=1;
INSERT INTO Equipes (NomeEquipe) VALUES 
		('Equipe A'),
		('Equipe B'),
		('Equipe C'),
		('Equipe D'),
		('Equipe E'),
		('Equipe F'),
		('Equipe G'),
		('Equipe H'),
		('Equipe I'),
		('Equipe J');
select * from equipes;

-- Inserção de dados fictícios na tabela Mecanicos:
ALTER TABLE Mecanicos auto_increment=1;
INSERT INTO Mecanicos (NomeMecanico, Endereço, Telefone, CPF, Especialidade) VALUES 
		('José da Silva', 'Rua A, 123', '123456789', '12345678901', 'Motor'),
		('Antônio Pereira', 'Rua B, 456', '987654321', '23456789012', 'Freio'),
		('Carlos Souza', 'Rua C, 789', '456789123', '34567890123', 'Suspensão'),
		('Marcos Lima', 'Rua D, 101', '789123456', '45678901234', 'Elétrica'),
		('Pedro Santos', 'Rua E, 202', '321654987', '56789012345', 'Arrefecimento'),
		('Ricardo Alves', 'Rua F, 303', '654987321', '67890123456', 'Motor'),
		('Juliana Costa', 'Rua G, 404', '987321654', '78901234567', 'Freio'),
		('Roberto Nunes', 'Rua H, 505', '123789456', '89012345678', 'Suspensão'),
		('Carlos Silva', 'Rua A, 123, São Paulo, SP', '11987654321', '12345227801', 'Mecânica Geral'),
		('João Pereira', 'Avenida B, 456, Campinas, SP', '19976543210', '23422789012', 'Alinhamento e Balanceamento'),
		('Mariana Souza', 'Rua C, 789, Sorocaba, SP', '15943218765', '34563490123', 'Suspensão e Freios'),
		('Lucas Oliveira', 'Rua D, 101, São José dos Campos, SP', '11932165487', '45678934234', 'Motor e Transmissão'),
		('Paula Costa', 'Avenida E, 202, Taubaté, SP', '12987612345', '56785456345', 'Elétrica Automotiva'),
		('Felipe Santos', 'Rua F, 303, Guarulhos, SP', '11345678901', '67890453456', 'Ar Condicionado Automotivo'),
		('Ana Lima', 'Rua G, 404, Ribeirão Preto, SP', '16987654321', '78901264567', 'Escapamento e Exaustão'),
		('Rafael Almeida', 'Avenida H, 505, São Paulo, SP', '11943216570', '89012895678', 'Pintura e Lataria'),
		('Thiago Rocha', 'Rua I, 606, Bauru, SP', '14976543210', '90342456789', 'Refrigeração Automotiva'),
		('Tatiane Martins', 'Rua J, 707, São Bernardo do Campo, SP', '11965432109', '01256437890', 'Diagnóstico e Teste');
 select * from mecanicos;

-- Inserção de dados fictícios na tabela EquipeMecanicos
ALTER TABLE EquipeMecanicos AUTO_INCREMENT=1;
INSERT INTO EquipeMecanicos (IdMecEquipe, IdMecanico) VALUES 
		(1, 1),
		(1, 2),
		(2, 3),
		(2, 4),
		(3, 5),
		(3, 6),
		(4, 7),
		(4, 8),
		(5, 9),
		(5, 10),
		(6, 11),
		(6, 12),
		(7, 13),
		(7, 14),
		(8, 15),
		(8, 16),
		(9, 17),
		(9, 18),
		(1, 9),
		(1, 7),
		(2, 11),
		(2, 12),
		(3, 13),
		(3, 14),
		(4, 15),
		(4, 6),
		(5, 17),
		(5, 18),
		(7, 9),
		(8, 13);
select * from EquipeMecanicos;

-- Inserção de dados fictícios na tabela Pecas:
ALTER TABLE Pecas AUTO_INCREMENT=1;
INSERT INTO Pecas (NomePeca, Categoria, QuantidadePecas, Valor) VALUES 
		('Filtro de óleo', 'Motor', 50, 50.00),
		('Pastilha de freio', 'Freio', 100, 150.00),
		('Correia dentada', 'Motor', 30, 200.00),
		('Amortecedor', 'Suspensão', 40, 300.00),
		('Bateria freio', 'Freio', 80, 250.00),
		('Filtro de ar', 'Motor', 70, 70.00),
		('Pneu', 'Rodas', 90, 600.00),
		('Parafuso', 'Diversos', 200, 10.00),
		('Retrovisor', 'Carroceria', 30, 150.00),
		('Farol', 'Iluminação', 50, 350.00),
		('Lanterna', 'Iluminação', 60, 200.00),
		('Parachoque', 'Carroceria', 20, 450.00),
		('Vidro', 'Carroceria', 40, 300.00),
		('Filtro de combustível', 'Motor', 50, 80.00),
		('Sensor de oxigênio', 'Motor', 30, 100.00),
		('Alternador', 'Elétrica', 20, 550.00),
		('Motor de arranque', 'Motor', 25, 600.00),
		('Cilindro mestre', 'Freio', 40, 250.00),
		('Mangueira de radiador', 'Arrefecimento', 60, 50.00),
		('Cabo de vela', 'Motor', 70, 40.00),
		('Bobina de ignição', 'Motor', 30, 150.00),
		('Filtro de cabine', 'Arrefecimento', 80, 90.00),
		('Sensor de temperatura', 'Motor', 50, 120.00),
		('Interruptor de luz', 'Elétrica', 40, 30.00),
		('Bomba de combustível', 'Motor', 20, 400.00),
		('Câmbio', 'Transmissão', 10, 1000.00);
select * from pecas;

-- Inserção de dados fictícios na tabela Servicos
ALTER TABLE Servicos AUTO_INCREMENT=1;
INSERT INTO Servicos (NomeServico, DescriçãoServico, Valor) VALUES 
		('Troca de óleo', 'Troca de óleo do motor', 100.00),
		('Alinhamento', 'Alinhamento das rodas', 80.00),
		('Balanceamento', 'Balanceamento das rodas', 70.00),
		('Revisão geral', 'Revisão completa do veículo', 300.00),
		('Troca de pastilhas', 'Troca de pastilhas de freio', 150.00),
		('Troca de correia', 'Troca de correia dentada', 200.00),
		('Substituição de amortecedores', 'Substituição de amortecedores', 400.00),
		('Troca de bateria', 'Substituição da bateria', 250.00),
		('Troca de velas', 'Substituição de velas de ignição', 60.00),
		('Troca de radiador', 'Substituição do radiador', 500.00),
		('Troca de discos', 'Substituição de discos de freio', 250.00),
		('Troca de filtro de ar', 'Substituição do filtro de ar', 70.00),
		('Troca de pneus', 'Substituição de pneus', 600.00),
		('Substituição de retrovisor', 'Substituição de retrovisor', 150.00),
		('Troca de farol', 'Substituição de farol', 350.00),
		('Troca de lanterna', 'Substituição de lanterna', 200.00),
		('Reparo de parachoque', 'Reparo de parachoque', 450.00),
		('Troca de vidro', 'Substituição de vidro', 300.00),
		('Troca de filtro de combustível', 'Substituição do filtro de combustível', 80.00),
		('Substituição de sensor de oxigênio', 'Substituição de sensor de oxigênio', 100.00),
		('Troca de alternador', 'Substituição do alternador', 550.00),
		('Troca de motor de arranque', 'Substituição do motor de arranque', 600.00),
		('Troca de cilindro mestre', 'Substituição do cilindro mestre', 250.00),
		('Troca de mangueira de radiador', 'Substituição da mangueira de radiador', 50.00),
		('Troca de cabo de vela', 'Substituição do cabo de vela', 40.00),
		('Troca de bobina de ignição', 'Substituição da bobina de ignição', 150.00),
		('Troca de filtro de cabine', 'Substituição do filtro de cabine', 90.00),
		('Troca de sensor de temperatura', 'Substituição do sensor de temperatura', 120.00),
		('Troca de interruptor de luz', 'Substituição do interruptor de luz', 30.00),
		('Troca de bomba de combustível', 'Substituição da bomba de combustível', 400.00);
select * from servicos;

-- Inserção de dados fictícios na tabela Autorizacoes
ALTER TABLE Autorizacoes AUTO_INCREMENT=1;
INSERT INTO Autorizacoes (IdAuCliente, DataAutorizacao) VALUES 
		(1, '2025-04-01'),
		(2, '2025-04-02'),
		(3, '2025-04-03'),
		(4, '2025-04-04'),
		(5, '2025-04-05'),
		(6, '2025-04-06'),
		(7, '2025-04-07'),
		(8, '2025-04-08'),
		(9, '2025-04-09'),
		(10, '2025-04-10'),
		(11, '2025-04-11'),
		(12, '2025-04-12'),
		(13, '2025-04-13'),
		(14, '2025-04-14'),
		(15, '2025-04-15'),
		(16, '2025-04-16'),
		(17, '2025-04-17'),
		(18, '2025-04-18'),
		(19, '2025-04-19'),
		(20, '2025-04-20'),
		(21, '2025-04-21'),
		(22, '2025-04-22'),
		(23, '2025-04-23'),
		(24, '2025-04-24'),
		(25, '2025-04-25'),
		(26, '2025-04-26'),
		(27, '2025-04-27'),
		(28, '2025-04-28'),
		(29, '2025-04-29'),
		(30, '2025-04-30');
select * from Autorizacoes;

-- Inserção de dados fictícios na tabela OrdensServico
ALTER TABLE OrdensServico AUTO_INCREMENT=1;
INSERT INTO OrdensServico (IdOsVeiculo, IdOsEquipe, IdOsAutorizacao, DataEmissao, StatusServiço, IdOsPeca, IdOsServico, DataConclusao, ValorTotal) VALUES
		(1, 1, 1, '2025-04-01', 'Concluído', 1, 1, '2025-04-02', 150.00),
		(2, 2, 2, '2025-04-02', 'Em andamento', 2, 2, '2025-04-03', 230.00),
		(3, 3, 3, '2025-04-03', 'Concluído', 3, 3, '2025-04-04', 180.00),
		(4, 4, 4, '2025-04-04', 'Em andamento', 4, 4, '2025-04-05', 200.00),
		(5, 5, 5, '2025-04-05', 'Concluído', 5, 5, '2025-04-06', 250.00),
		(6, 6, 6, '2025-04-06', 'Em andamento', 6, 6, '2025-04-07', 300.00),
		(7, 7, 7, '2025-04-07', 'Concluído', 7, 7, '2025-04-08', 350.00),
		(8, 8, 8, '2025-04-08', 'Em andamento', 8, 8, '2025-04-09', 400.00),
		(9, 9, 9, '2025-04-09', 'Concluído', 9, 9, '2025-04-10', 450.00),
		(10, 10, 10, '2025-04-10', 'Em andamento', 10, 10, '2025-04-11', 500.00),
		(11, 1, 11, '2025-04-11', 'Concluído', 11, 11, '2025-04-12', 550.00),
		(12, 2, 12, '2025-04-12', 'Em andamento', 12, 12, '2025-04-13', 600.00),
		(13, 3, 13, '2025-04-13', 'Concluído', 13, 13, '2025-04-14', 650.00),
		(14, 4, 14, '2025-04-14', 'Em andamento', 14, 14, '2025-04-15', 700.00),
		(15, 5, 15, '2025-04-15', 'Concluído', 15, 15, '2025-04-16', 750.00),
		(16, 6, 16, '2025-04-16', 'Em andamento', 16, 16, '2025-04-17', 800.00),
		(17, 7, 17, '2025-04-17', 'Concluído', 17, 17, '2025-04-18', 850.00),
		(18, 8, 18, '2025-04-18', 'Em andamento', 18, 18, '2025-04-19', 900.00),
		(19, 9, 19, '2025-04-19', 'Concluído', 19, 19, '2025-04-20', 950.00),
		(20, 10, 20, '2025-04-20', 'Em andamento', 20, 20, '2025-04-21', 1000.00),
		(21, 1, 21, '2025-04-21', 'Concluído', 21, 21, '2025-04-22', 1050.00),
		(22, 2, 22, '2025-04-22', 'Em andamento', 22, 22, '2025-04-23', 1100.00),
		(23, 3, 23, '2025-04-23', 'Concluído', 23, 23, '2025-04-24', 1150.00),
		(24, 4, 24, '2025-04-24', 'Em andamento', 24, 24, '2025-04-25', 1200.00),
		(25, 5, 25, '2025-04-25', 'Concluído', 25, 25, '2025-04-26', 1250.00),
		(26, 6, 26, '2025-04-26', 'Em andamento', 26, 26, '2025-04-27', 1300.00),
		(27, 7, 27, '2025-04-27', 'Concluído', 17, 27, '2025-04-28', 1350.00),
		(28, 8, 28, '2025-04-28', 'Em andamento', 8, 28, '2025-04-29', 1400.00),
		(29, 9, 29, '2025-04-29', 'Concluído', 9, 19, '2025-04-30', 1450.00),
		(30, 10, 30, '2025-04-30', 'Em andamento', 3, 30, '2025-05-01', 1500.00);
select * from OrdensServico;


