create table usuario(
	idusuario	serial 			primary key,
	nome		varchar(150)	not null,
	email		varchar(100)	not null unique,
	senha		varchar(50)		not null,
	tipo		varchar(10)		not null,
	matricula	varchar(40),
	foreign key(matricula)
		references funcionario(matricula)
)

create table funcionario(
	matricula		varchar(40) 	primary key
)

insert into funcionario (matricula) values 
(1234),
(5678)


create table livro (
  idlivro 			serial 			primary key,
  nome				varchar(150)	not null,
  autor 			varchar(150)	not null,
  descricao 		varchar(150)	not null,
  categoria 		varchar(150)	not null,
  editora			varchar(150)	not null  
)

insert into livro (nome, autor, descricao, categoria, editora) 
values 
('Dom Casmurro', 'Machado de Assis', 'Romance brasileiro', 'Ficção', 'Editora Globo'),
('Memórias Póstumas de Brás Cubas', 'Machado de Assis', 'Romance brasileiro', 'Ficção', 'Editora Nova Fronteira'),
('Grande Sertão: Veredas', 'João Guimarães Rosa', 'Romance brasileiro', 'Ficção', 'Editora Nova Fronteira'),
('1984', 'George Orwell', 'Ficção distópica', 'Ficção', 'Companhia Editora Nacional'),
('A Revolução dos Bichos', 'George Orwell', 'Ficção política', 'Ficção', 'Companhia Editora Nacional'),
('O Processo', 'Franz Kafka', 'Romance filosófico', 'Ficção', 'Companhia das Letras'),
('O Grande Gatsby', 'F. Scott Fitzgerald', 'Romance americano', 'Ficção', 'Penguin Classics'),
('O Apanhador no Campo de Centeio', 'J.D. Salinger', 'Romance americano', 'Ficção', 'Penguin Books'),
('Cem Anos de Solidão', 'Gabriel García Márquez', 'Romance latino-americano', 'Ficção', 'Editora Record'),
('O Amor nos Tempos do Cólera', 'Gabriel García Márquez', 'Romance latino-americano', 'Ficção', 'Editora Record');