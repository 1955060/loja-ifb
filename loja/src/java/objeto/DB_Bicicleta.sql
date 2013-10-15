create database lpoow_loja;

\c lpoow_loja;

create table bicicleta(
id serial primary key,
cor varchar(20),
categoria varchar(15),
marca varchar(10),
aro varchar(2),
valor integer
);
--cor-cor; cate-mode; marca-marca; comb-aro; valor-ano