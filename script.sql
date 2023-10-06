CREATE DATABASE bar;
USE bar;
DROP DATABASE bar;
/* Lógico_1: */

CREATE TABLE garcom (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50)
);

CREATE TABLE mesa (
    id INT PRIMARY KEY AUTO_INCREMENT,
    localizacao NCHAR(2)
);

CREATE TABLE comanda (
    id INT PRIMARY KEY AUTO_INCREMENT,
    valor DECIMAL(5,2),
    fechada TINYINT(1),
    estrelas INT,
    fk_garcom_id INT,
    fk_mesa_id INT
);
 
ALTER TABLE comanda ADD CONSTRAINT FK_comanda_2
    FOREIGN KEY (fk_garcom_id)
    REFERENCES garcom (id)
    ON DELETE CASCADE;
 
ALTER TABLE comanda ADD CONSTRAINT FK_comanda_3
    FOREIGN KEY (fk_mesa_id)
    REFERENCES mesa (id)
    ON DELETE CASCADE;
    
INSERT INTO garcom (nome) VALUES
	("Pedro Paulo"),
    ("José da Silva"),
    ("Gabriel Augusto"),
    ("Paulo da Cunha"),
    ("João Miguel"),
    ("Marina da Silva"),
    ("Josivaldo Farias"),
    ("Paulo Santhiago"),
    ("Gabriel Barros"),
    ("Pedro Guerra");
    
SELECT*FROM garcom;
    
INSERT INTO mesa (localizacao) VALUES
	("A1"),
    ("A2"),
    ("A3"),
    ("A4"),
    ("A5"),
    ("A6"),
    ("A7"),
    ("A8"),
    ("A9");

INSERT INTO mesa (localizacao) VALUES
	("B1"),
    ("B2"),
    ("B3"),
    ("B4"),
    ("B5"),
    ("B6"),
    ("B7"),
    ("B8"),
    ("B9");
    
INSERT INTO mesa (localizacao) VALUES
	("C1"),
    ("C2"),
    ("C3"),
    ("C4"),
    ("C5"),
    ("C6"),
    ("C7"),
    ("C8"),
    ("C9");

INSERT INTO mesa (localizacao) VALUES
	("D1"),
    ("D2"),
    ("D3"),
    ("D4"),
    ("D5"),
    ("D6"),
    ("D7"),
    ("D8"),
    ("D9");
    
INSERT INTO mesa (localizacao) VALUES
	("E1"),
    ("E2"),
    ("E3"),
    ("E4"),
    ("E5"),
    ("E6"),
    ("E7"),
    ("E8"),
    ("E9");
SELECT*FROM mesa,garcom;

select*from mesa;

select*from comanda;

INSERT INTO comanda(valor,fechada,estrelas,fk_garcom_id,fk_mesa_id) 
	VALUES(400.90,false,3,4,1);
    
INSERT INTO comanda(valor,fechada,estrelas,fk_garcom_id,fk_mesa_id) VALUES 
(50.00,true,3,1,1),
(800.90,true,4,3,2),
(200.70,false,5,4,1),
(90.80,true,3,5,4),
(20.34,false,1,6,9),
(600.87,true,2,7,10),
(300.25,true,5,8,10),
(400.45,false,3,1,1),
(260.90,true,4,3,12);