-- 1
SELECT nome, ano
FROM Filmes

-- 2
SELECT nome, ano, Duracao
FROM Filmes
ORDER BY ano ASC

-- 3
SELECT nome, ano, duracao
FROM Filmes
WHERE nome = 'De Volta para o Futuro'

-- 4
SELECT nome, ano, duracao
FROM Filmes
WHERE ano = 1997

-- 5
SELECT nome, ano, duracao
FROM Filmes
WHERE ano >= 2000

-- 6
SELECT nome, ano, duracao
FROM Filmes
WHERE duracao > 100 AND duracao < 150
ORDER BY duracao ASC

-- 7
SELECT ano, COUNT(*) AS quantidade_filmes
FROM Filmes
GROUP BY ano
ORDER BY quantidade_filmes DESC

-- 8
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M'

-- 9
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

-- 10
SELECT 
    f.Nome AS Nome, 
    g.Genero AS Genero
FROM 
    dbo.Filmes f
JOIN 
    dbo.FilmesGenero fg ON f.Id = fg.IdFilme
JOIN 
    dbo.Generos g ON fg.IdGenero = g.Id

-- 11
SELECT 
    f.Nome AS Nome, 
    g.Genero AS Genero
FROM 
    dbo.Filmes f
JOIN 
    dbo.FilmesGenero fg ON f.Id = fg.IdFilme
JOIN 
    dbo.Generos g ON fg.IdGenero = g.Id
WHERE
	g.Genero = 'Mistério'

-- 12
SELECT 
    f.Nome AS Nome,
    a.PrimeiroNome,
    a.UltimoNome,
    ef.Papel
FROM 
    Filmes f
JOIN 
    ElencoFilme ef ON f.Id = ef.IdFilme
JOIN 
    Atores a ON ef.IdAtor = a.Id
