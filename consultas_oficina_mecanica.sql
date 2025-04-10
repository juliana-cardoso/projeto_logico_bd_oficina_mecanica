-- consultas oficina mecânica:
use oficina_mecanica;

-- cinco peças com o maior preço
SELECT NomePeca, SUM(Valor) AS Valor
		FROM Pecas
		GROUP BY NomePeca
		ORDER BY Valor DESC;
        
-- estoque de peças menor ou igual a 20
SELECT IdPeca, NomePeca, SUM(QuantidadePecas) AS Quantidade
		FROM Pecas
		GROUP BY IdPeca
        HAVING SUM(QuantidadePecas) <= 20;

-- serviço mais comum nos veículos
SELECT NomeServico, COUNT(*) AS Total
		FROM OrdensServico OS
		JOIN Servicos S ON OS.IdOsServico = S.IdServico
		GROUP BY NomeServico
		ORDER BY Total DESC;

-- modelo veículo com mais problemas
SELECT Modelo, COUNT(*) AS TotalProblemas
		FROM Veiculos V
		JOIN OrdensServico OS ON V.IdVeiculo = OS.IdOsVeiculo
		GROUP BY Modelo
		ORDER BY TotalProblemas DESC;

-- mecânicos que trabalham em mais de uma equipe
SELECT NomeMecanico, COUNT(DISTINCT IdMecEquipe) AS TotalEquipes
		FROM Mecanicos M
		JOIN EquipeMecanicos EM ON M.IdMecanico = EM.IdMecanico
		GROUP BY NomeMecanico
		HAVING TotalEquipes > 1;
        
-- mecânicos especialistas em motor
SELECT NomeMecanico, Especialidade
		FROM Mecanicos
        WHERE Especialidade = "Motor";
        
-- OS de serviços que utilizaram algum tipo de filtro
SELECT NomeServico, IdOsServico
		FROM Servicos S
        JOIN OrdensServico OS ON OS.IdOsServico = S.IdServico
        WHERE NomeServico LIKE '%filtro%'
        ORDER BY IdOrdemServico;

-- equipe que autorizou mais ordens de serviços
SELECT NomeEquipe, COUNT(*) AS TotalOrdens
FROM Equipes E
JOIN OrdensServico OS ON E.IdEquipe = OS.IdOsEquipe
GROUP BY NomeEquipe
ORDER BY TotalOrdens DESC;


