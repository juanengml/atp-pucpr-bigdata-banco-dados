create database TechLogica_HML;

use TechLogica_HML;

CREATE TABLE `departamento` (
  `id_departamento` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nome` varchar(255)
);

CREATE TABLE `projeto` (
  `id_projeto` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nome` varchar(255),
  `data_inicio` datetime,
  `id_departamento` integer
);

CREATE TABLE `funcionario` (
  `id_funcionario` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `cpf` integer,
  `nome` varchar(255),
  `sexo` varchar(255),
  `data_nascimento` date,
  `salario` float,
  `id_projeto` integer,
  `id_departamento` integer,
  `percentual_recebido` integer
);

CREATE TABLE `dependentes` (
  `id_dependentes` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nome` varchar(255),
  `sexo` varchar(255),
  `id_funcionario` integer
);

ALTER TABLE `projeto` ADD CONSTRAINT `Departameno_has_projeto` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`);

ALTER TABLE `funcionario` ADD CONSTRAINT `Projeto_has_funcionario` FOREIGN KEY (`id_projeto`) REFERENCES `projeto` (`id_projeto`);

ALTER TABLE `funcionario` ADD CONSTRAINT `Gerencia_Has_funcionario` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`);

ALTER TABLE `dependentes` ADD CONSTRAINT `funcionario_has_dependente` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`);

-- insert departamentos 
 
	insert into departamento (nome) values ("Financas");
	insert into departamento (nome) values ("RH");
	insert into departamento (nome) values ("Tecnologia");
	insert into departamento (nome) values ("Dados");
	insert into departamento (nome) values ("Engenharia");

--DELETE FROM `projeto`;
-- insert projetos 

	insert into projeto (nome, data_inicio, id_departamento) values ("WEB APP FORECAST PUBLICITARIO - TECH TEAM",Now(), 3);
	insert into projeto (nome, data_inicio, id_departamento) values ("MODELAGEM FORECAST PUBLICITARIO - DATA TEAM",Now(), 4);
	insert into projeto (nome, data_inicio, id_departamento) values ("EXTRACAO FORECAST PUBLICITARIO - ENG DATA TEAM",Now(), 5);

-- insert funcionarios 
	insert into funcionario (cpf,nome,sexo, data_nascimento,salario, id_projeto,id_departamento,percentual_recebido)
	     values (123123,"Juan Nascimento Padilha","Masculino", '2000-10-06', 5000,1,3,20);

	insert into funcionario (cpf,nome,sexo, data_nascimento,salario, id_projeto,id_departamento,percentual_recebido)
	     values (987623,"Tatiana da Pinha","Feminino", '1999-10-06', 5000,1,3,20);

	insert into funcionario (cpf,nome,sexo, data_nascimento,salario, id_projeto,id_departamento,percentual_recebido)
	     values (457564,"Larissa Howard Stark","Feminino", '1998-12-08', 6000,1,3,20);

	insert into funcionario (cpf,nome,sexo, data_nascimento,salario, id_projeto,id_departamento,percentual_recebido)
	     values (545614,"Matias Nascimento","Masculino", '2000-10-06', 5000,2,3,30);

	insert into funcionario (cpf,nome,sexo, data_nascimento,salario, id_projeto,id_departamento,percentual_recebido)
	     values (756734,"Larissa Vieira","Feminino", '2003-01-06', 5000,2,3,20);

	insert into funcionario (cpf,nome,sexo, data_nascimento,salario, id_projeto,id_departamento,percentual_recebido)
	     values (123678,"Debora dos Santos","Feminino", '2005-11-08', 5000,2,3,20);
	
	insert into funcionario (cpf,nome,sexo, data_nascimento,salario, id_projeto,id_departamento,percentual_recebido)
	     values (154562,"Carolina Siqueira","Feminino", '2001-10-01', 3000,3,4,10);     

	insert into funcionario (cpf,nome,sexo, data_nascimento,salario, id_projeto,id_departamento,percentual_recebido)
	     values (165562,"Juliana KarEll","Feminino", '2001-06-01', 9000,3,4,10);     
	     
	insert into funcionario (cpf,nome,sexo, data_nascimento,salario, id_projeto,id_departamento,percentual_recebido)
	     values (653457,"Claudia Newell","Feminino", '1996-10-04', 10000,3,4,20);     
	     
	insert into funcionario (cpf,nome,sexo, data_nascimento,salario, id_projeto,id_departamento,percentual_recebido)
	     values (445677,"Newell Duarte","Masculino", '1997-11-04', 1000,1,1,20);     
	     
	insert into funcionario (cpf,nome,sexo, data_nascimento,salario, id_projeto,id_departamento,percentual_recebido)
	     values (456123,"Cristofer de Alencar","Masculino", '1997-12-04', 5000,1,1,10);  
	        
	insert into funcionario (cpf,nome,sexo, data_nascimento,salario, id_projeto,id_departamento,percentual_recebido)
	     values (235600,"Alexandre Duarte Pinheiro","Masculino", '1997-12-04', 5000,1,1,20);     

---insert dependentes

       insert into dependentes(nome,sexo,id_funcionario) values ("Duarte Jr","Masculino",12);
       insert into dependentes(nome,sexo,id_funcionario) values ("Roger Siqueira","Masculino",11);
       insert into dependentes(nome,sexo,id_funcionario) values	("Francisca Divina","Feminina",10);
       insert into dependentes(nome,sexo,id_funcionario) values ("JoseMar Lucio","Masculino",5);
       insert into dependentes(nome,sexo,id_funcionario) values ("Ada Byron","Feminino",1);

--- atp 3 - create proc 


----------------- zuado não usar
----CREATE PROCEDURE UPSALARIO()
----	IF (SELECT percentual_recebido FROM funcionario) = 20
----	   select concat("Percentual Salarial Aumentado: ",20)
----	ELSE 
----	   select concat("Percentual Salarial nao Aumentado: ",10)
	    
  
----CREATE PROCEDURE UPSALARIO()
 ----BEGIN
    ----DECLARE PERCENTUAL DECIMAL DEFAULT 0
    ----SELECT percentual_recebido 
    ----INTO PERCENTUAL
----    FROM funcionario
----    IF PERCENTUAL = 20 THEN
----        select concat("Salario: ",8000)
----    ELSE
----        select concat("Salario: ",2000)
 ----END;
----CALL UPSALARIO(20);
