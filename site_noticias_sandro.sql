create database site_noticias;

use site_noticias;

create table noticias (
	id_noticias int not null auto_increment,
    texto varchar(45) not null,
    link_image varchar(100) not null,
    titulo varchar(45) not null,
    primary key (id_noticias)
);

create table utilizadores(
	id_utilizadores int not null auto_increment,
    primary key (id_utilizadores),
    email varchar(45) not null,
    senha varchar(45) not null
);

create table temas(
	id_temas int not null,
    primary key(id_temas),
    tipo varchar(45) not null
);

create table trabalhadores(
	id_trabalhadores int not null auto_increment,
    primary key(id_trabalhadores),
    tipo varchar(45) not null,
    nome varchar(45) not null,
    bi int not null,
    nif int not null
);

create table destaques(
	id_destaques int not null auto_increment,
    primary key(id_destaques)
);

create table comentarios(
	id_comentarios int not null auto_increment,
    primary key(id_comentarios),
    texto varchar(100)
);

-- criação das chaves estrangeiras ---

-- tabela: noticias
alter table noticias add(id_temas int);
alter table noticias add(id_trabalhadores int);
alter table noticias add(id_destaques int);

alter table noticias add foreign key (id_temas) references temas(id_temas);
alter table noticias add foreign key (id_temas) references trabalhadores(id_trabalhadores);
alter table noticias add foreign key (id_temas) references destaques(id_destaques);

-- tabela: trabalhadores
alter table trabalhadores add(id_noticias int);
alter table trabalhadores add foreign key (id_noticias) references noticias(id_noticias);

-- tabela: destaques
alter table destaques add(id_trabalhadores int);
alter table destaques add foreign key (id_trabalhadores) references trabalhadores(id_trabalhadores);

-- tabela: temas
alter table temas add(id_trabalhadores int);
alter table temas add foreign key (id_trabalhadores) references trabalhadores(id_trabalhadores);

-- tabela: comentarios
alter table comentarios add(id_noticias int);
alter table comentarios add foreign key (id_noticias) references noticias(id_noticias);

alter table comentarios add(id_utilizadores int);
alter table comentarios add foreign key (id_utilizadores) references utilizadores(id_utilizadores);

-- -------------------------------------------------
-- leitura, eliminação, atualização e inserção

insert into utilizadores (email, senha) values ("abc@gmail.com", "123");

select * from utilizadores;

delete from utilizadores where id_utilizadores="5";
 
insert into utilizadores (email, senha) values ("abc2@gmail.com", md5("123"));
insert into utilizadores (email, senha) values ("abc3@gmail.com", password("123"));

alter table utilizadores add (data_nascimento date);


UPDATE utilizadores SET data_nascimento="2007-01-09" WHERE id_utilizadores=11;
UPDATE utilizadores SET email="grupo10@hotmail.com" WHERE id_utilizadores=11;