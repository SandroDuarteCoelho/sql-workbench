create database EmpresaBD;
use EmpresaBD;

-- ------------ Clientes ---------------
create table cidade(
	id_cidade smallint not null auto_increment,
    primary key(id_cidade),
    cidade varchar(50) not null,
    ult_atualizacao timestamp not null
);

create table pais(
	id_pais smallint not null auto_increment,
    primary key(id_pais),
    pais varchar(50),
    ult_atualizacao timestamp not null
);

create table endereco(
	id_endereco smallint not null auto_increment,
    primary key(id_endereco),
    endereco varchar(50) not null,
    endereco2 varchar(50),
    distrito varchar(20) not null,
    c_postal varchar(10),
    telefone varchar(20) not null,
    ult_atualizacao timestamp not null
);

create table cliente(
	id_cliente smallint not null auto_increment,
    primary key(id_cliente),
    p_nome varchar(45) not null,
    u_nome varchar(45) not null,
    email varchar(50),
    ativo boolean not null,
    data_creacao datetime not null,
    ult_atualizacao timestamp 
);

-- ------------ Negócios ---------------
create table empregados(
	id_empregados tinyint not null auto_increment,
    primary key(id_empregados),
    p_nome varchar(45) not null,
    u_nome varchar(45) not null,
    foto blob,
    email varchar(50),
    ativo boolean not null,
    nome_utilizador varchar(16) not null,
    senha varchar(40),
    ult_atualizacao timestamp not null
);
create table loja(
	id_loja tinyint not null auto_increment,
    primary key(id_loja),
    ult_atualizacao timestamp not null
);
create table pagamentos(
	id_pagamentos smallint not null auto_increment,
    primary key(id_pagamentos),
    quantia decimal(5,2) not null,
    data_pagamento datetime not null,
    ult_atualizacao timestamp 
);
create table renda(
	id_renda int not null auto_increment,
    primary key(id_renda),
    quantia decimal(5,2) not null,
    data_aluguer datetime not null,
    data_devolucao datetime,
    ult_atualizacao timestamp not null
);
-- ------------ Inventário ---------------
create table filmes(
	id_filmes smallint not null auto_increment,
    primary key(id_filmes),
    titulo varchar(255) not null,
    descricao text,
    ano_estreia year,
    duracao_aluguer tinyint not null,
    rate_aluguer decimal(4,2) not null,
    duracao smallint,
    custo_extra decimal(5,2),
    rating enum("e"),
    especial set("e"),
    ult_atualizacao timestamp not null
    );
    
    create table categoria(
	id_categoria tinyint not null auto_increment,
    primary key(id_categoria),
    nome varchar(25) not null,
    ult_atualizacao timestamp not null
    );
    
    create table lingua(
	id_lingua tinyint not null auto_increment,
    primary key(id_lingua),
    nome varchar(20) not null,
    ult_atualizacao timestamp not null
    );
    
    create table actor(
	id_actor smallint not null auto_increment,
    primary key(id_actor),
    p_nome varchar(45) not null,
    u_nome varchar(45) not null,
    ult_atualizacao timestamp not null
    );
    
    create table inventario(
	id_inventario mediumint not null auto_increment,
    primary key(id_inventario),
    ult_atualizacao timestamp not null
    );
    
    -- --------- Chaves estrangeiras -------------
    
alter table cidade add(id_pais smallint);
alter table cidade add foreign key (id_pais) references pais(id_pais);

alter table endereco add(id_cidade smallint);
alter table endereco add foreign key (id_cidade) references cidade(id_cidade);

alter table cliente add(id_loja tinyint);
alter table cliente add foreign key (id_loja) references loja(id_loja);
alter table cliente add(id_endereco smallint);
alter table cliente add foreign key (id_endereco) references endereco(id_endereco);

alter table empregados add(id_loja tinyint);
alter table empregados add foreign key (id_loja) references loja(id_loja);
alter table empregados add(id_endereco smallint);
alter table empregados add foreign key (id_endereco) references endereco(id_endereco);

alter table loja add(id_endereco smallint);
alter table loja add foreign key (id_endereco) references endereco(id_endereco);

alter table pagamentos add(id_cliente smallint);
alter table pagamentos add foreign key (id_cliente) references cliente(id_cliente);
alter table pagamentos add(id_empregados tinyint);
alter table pagamentos add foreign key (id_empregados) references empregados(id_empregados);
alter table pagamentos add(id_renda int);
alter table pagamentos add foreign key (id_renda) references renda(id_renda);

alter table renda add(id_cliente smallint);
alter table renda add foreign key (id_cliente) references cliente(id_cliente);
alter table renda add(id_empregados tinyint);
alter table renda add foreign key (id_empregados) references empregados(id_empregados);

alter table filmes add(id_lingua tinyint);
alter table filmes add foreign key (id_lingua) references lingua(id_lingua);

alter table inventario add(id_loja tinyint);
alter table inventario add foreign key (id_loja) references loja(id_loja);
alter table inventario add(id_filmes smallint);
alter table inventario add foreign key (id_filmes) references filmes(id_filmes);