-- 1 BUSCAR O NOME E O ANO DO FILME

SELECT Nome, Ano FROM filmes


-- 2 BUSCAR O NOME E ANO DOS FILMES, ORDENADOS POR ORDEM CRESCENTE PELO ANO

SELECT Nome, Ano FROM filmes
ORDER By Ano 

-- 3 BUSCAR PELO FILME DE VOLTA PARA O FUTURO TRAZENDO O NOME, ANO E A DURAÇÃO

SELECT Nome, Ano, Duracao FROM filmes 
WHERE Nome = 'De Volta para o Futuro'

-- 4 BUSCAR OS FILMES LANÇADOS EMM 1997

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997


-- 5 BUSCAR OS FILMES LANÇADOS APÓS O ANO 2000

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

-- 6 BUSCANDO OS FILMES COM A DURAÇÃO MAIOR QUE 100 e menor que 150, ordenado pela duração em ordem crescente 

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao

-- 7 BUSCAR A QUANTIDADE DE FILMES LANÇADAS NO ANO, AGRUPANDO POR ANO, ORDENADO PELA DURACAO EM ORDEM CRESCENTE

SELECT Ano FROM Filmes

-- 8 BUSCAR OS ATORES DO GÊNERO MASCULINO, RETORNANDO O PrimeiroNome, UltimoNome
SELECT * FROM Atores
WHERE Genero = 'M'

-- 9 BUSCAR OS ATORES DO GÊNERO FEMININO, RETORNANDO O PRIMEIRONOME, ULTIMO NOME, E ORDENADO PELO PRIMEIRO NOME

SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'F' 
ORDER BY PrimeiroNome

-- 10 Buscar o nome do filme e o Genero 

SELECT Filmes.Nome, Generos.Genero 
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-- 11 BUSCAR O NOME DO FILME E O GÊNERO DO TIPO "MISTÉRIO"

SELECT Filmes.Nome, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'

-- 12 BUSCAR O NOME DO FILME, OS ATORES, PRIMEIRO NOME, ULTIMO NOME, PAPEL
SELECT Filmes.Nome AS Filme, Atores.PrimeiroNome AS NomeAtor, Atores.UltimoNome AS SobrenomeAtor, ElencoFilme.Papel FROM Filmes
INNER JOIN Atores ON Filmes.Id = Atores.Id
INNER JOIN ElencoFilme ON ElencoFilme.IdAtor = Atores.Id