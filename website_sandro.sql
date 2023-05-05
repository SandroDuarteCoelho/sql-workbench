create database website;
use website;

create table utilizadores(
id_utilizador int not null auto_increment,
primary key (id_utilizador),
nome varchar(100) not null,
senha varchar(100)
);

create table comentarios(
id_comentario int not null auto_increment,
primary key (id_comentario),
texto varchar(1000) not null,
id_utilizador int,
foreign key(id_utilizador) references utilizadores(id_utilizador)
);

select * from utilizadores;
select * from comentarios;

-- insert into comentarios (texto, id_utilizador) value ('Isto é um comentário','2');

-- delete from utilizadoes;