--1
select Nome, Ano from Filmes

--2
select Nome, Ano from Filmes
order by ano asc

--3
select Nome, Ano, Duracao from Filmes
where Nome like '%futuro%'

--4
select * from Filmes
where Ano = '1997'

--5
select * from Filmes
where Ano > '2000'

--6
select *
from filmes
where duracao > 100 AND duracao < 150
order by duracao ASC

--7
select Ano, count(*) as Qntd
from Filmes
group by Ano
order by Qntd DESC

--8
select * from Atores
where Genero = 'M'

--9
select * from Atores
where Genero = 'F'
order by PrimeiroNome ASC

--10
select Filmes.Nome, Generos.Genero from Filmes
join FilmesGenero on Filmes.id = FilmesGenero.id
join Generos on FilmesGenero.id = Generos.id;

--11
select Filmes.Nome, Generos.Genero from Filmes
join FilmesGenero on Filmes.id = FilmesGenero.id
join Generos on FilmesGenero.id = Generos.id
where Generos.Genero = 'Mistério'

--12
select Filmes.Nome as nome_filme, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
from Filmes
join ElencoFilme on Filmes.id = ElencoFilme.IdFilme
join Atores on ElencoFilme.IdAtor = Atores.id
