-- 1 - Buscar o nome e ano dos filmes
select Nome, Ano from Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select Nome, Ano from Filmes order by Ano Asc;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select Nome, Ano, Duracao from Filmes where Nome = 'de volta para o futuro';

-- 4 - Buscar os filmes lançados em 1997
select * from Filmes where Ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000
select * from Filmes where Ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select * from Filmes where Duracao > 100 and Duracao < 150 order by Duracao Asc;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT 
    Ano,
    COUNT(*) AS quantidade
FROM 
    filmes
GROUP BY 
    Ano
ORDER BY 
    quantidade DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'F' order by PrimeiroNome Asc;

-- 10 - Buscar o nome do filme e o gênero
select Nome, Genero from Filmes f, FilmesGenero fg, Generos g where g.Id = fg.IdGenero;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select Nome, Genero from Filmes f, FilmesGenero fg, Generos g where g.Id = fg.IdGenero and g.Genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select Nome, PrimeiroNome, UltimoNome, Papel from Filmes f, Atores a, ElencoFilme ef where a.Id = ef.Id;
