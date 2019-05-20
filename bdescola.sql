create database bdEscola;
use bdEscola;
create table instrutores (id int not null primary key,nome varchar (255),
email varchar (50), valor_hora int  (10), certificados varchar (255));
create table cursos (id int not null primary key ,nome varchar (50), requisito varchar (255),
carga_horaria smallint(5), preco double);
create table alunos (id int not null primary key, cpf char (11), nome varchar (50), email varchar (50),
fone char (14), data_nascimento date not null );
create table matriculas (id int not null primary key,turmas_id int,alunos_id int, data_matricula date);
alter table matriculas add constraint matriculas_fkindex1 foreign key (turmas_id) references turmas(id);
alter table matriculas add constraint matriculas_fkindex3 foreign key (alunos_id) references alunos(id);
create table turmas(id int not null primary key,instrutores_id int,cursos_id int, data_inicio date, data_final date, carga_horaria smallint (5));
alter table  turmas add constraint turmas_fkindex1 foreign key (instrutores_id) references instrutores(id);
alter table turmas add constraint turmas_fkindex2 foreign key (cursos_id) references cursos (id);