create database site_anuncios;
use site_anuncios;

create table utilizadores(
id_utilizador int not null auto_increment,
primary key(id_utilizador),
nome varchar(45) not null,
senha varchar(45) not null
);

create table anuncios(
id_anuncio int not null auto_increment,
primary key(id_anuncio),
titulo varchar(45) not null,
descricao varchar(45) not null,
preco float not null,
localizacao varchar (45) not null,
codigo_postal varchar(45) not null,
id_utilizador int,
foreign key (id_utilizador) references utilizadores(id_utilizador)
);

-- drop database site_anuncios;
update anuncios set preco=20 where id_anuncio=4;

insert into utilizadores (nome, senha) values ("Alfreds", "Maria");
insert into utilizadores (nome, senha) values ("Alfreds", md5("Maria"));
insert into utilizadores (nome, senha) values ("Sandro", md5("Maria"));
insert into utilizadores (nome, senha) values ("Joana", md5("asasMaria"));
insert into utilizadores (nome, senha) values ("Tiago", md5("asasMaria"));

update utilizadores set senha=md5("abs") where id_utilizador=1;
update utilizadores set nome=("Carlos") where id_utilizador=1;

select * from anuncios;
select * from utilizadores;
