create database AcademiaNova;
use AcademiaNova;

create table usuario (
	id int not null auto_increment,
    nome varchar(60) not null,
    idade int not null,
	primary key(id)
);
create table endereco (
	id int not null auto_increment,
	iduser int not null,
    endereco varchar(100) not null,
    primary key (id)
);

INSERT INTO usuario (nome, idade) VALUES ('Henrique', 19);
INSERT INTO usuario (nome, idade) VALUES ('Leticia', 22);
INSERT INTO usuario (nome, idade) VALUES ('Davi', 40);

INSERT INTO endereco (iduser, endereco) VALUES (1, 'Federal' );
INSERT INTO endereco (iduser, endereco) VALUES (5, 'Federal' );
INSERT INTO endereco (iduser, endereco) VALUES (6, 'Centro' );

SELECT * FROM endereco
UPDATE usuario SET idade = 44 WHERE id = 4;
DELETE FROM usuario  WHERE id > 1;

SELECT * FROM usuario INNER join endereco
ON usuario.id = endereco.iduser;