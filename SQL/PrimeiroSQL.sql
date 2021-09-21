--Criando um banco de dados;
create database Filmes;

--Acessando banco de dados;
use Filmes;

--Criando tabelas;
create table Generos
(
	idGeneros int primary key identity, 
	Nome varchar(200) not null
);

create table Filmes
(
	idFilmes int primary key identity,
	Nome  varchar (255) not null,
	Sinopse varchar (255),
	idGeneros int foreign key  references Generos (idGeneros)
);
--primeiro criar a tabela estrangeira para passar os valores para a tabela principal;

--comandos DML -- linguagem de manipulação de dados
--inserte, alter e delete
--inserir dados em uma tabela
insert into Generos ( Nome) values ('Ação');
insert into Generos ( Nome) values ('Ficção');
insert into Generos ( Nome) values ('Aventura');
insert into Generos ( Nome) values ('Comédia');

--deletar uma informaçãp da tabela
delete from Generos where idGeneros > 4 AND idGeneros < 8;

-- atualizar dados de uma tabela;
update Generos set  Nome = 'Comédia/drama' where idGeneros = 24;

--resetar identity
DBCC chekident ('[Generos]', reseed, 0);

--selecionar dados em uma tabela;
select idGeneros, Nome from Generos;