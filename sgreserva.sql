﻿--
-- Script was generated by Devart dbForge Studio 2020 for MySQL, Version 9.0.435.0
-- Product home page: http://www.devart.com/dbforge/mysql/studio
-- Script date 23/09/2021 23:59:17
-- Server version: 5.7.31
-- Client version: 4.1
--

-- 
-- Disable foreign keys
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Set SQL mode
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

DROP DATABASE IF EXISTS sgreserva;

CREATE DATABASE sgreserva
	CHARACTER SET utf8
	COLLATE utf8_general_ci;

--
-- Set default database
--
USE sgreserva;

--
-- Create table `sala`
--
CREATE TABLE sala (
  id INT(11) NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX UK_sala_id(id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 10,
AVG_ROW_LENGTH = 2048,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Create table `periodo`
--
CREATE TABLE periodo (
  id INT(11) NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX UK_periodo_id(id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 6,
AVG_ROW_LENGTH = 4096,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Create table `reserva`
--
CREATE TABLE reserva (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sala_id INT(11) NOT NULL,
  periodo_id INT(11) NOT NULL,
  dia DATE NOT NULL,
  professor_desc VARCHAR(255) DEFAULT NULL,
  disciplina_desc VARCHAR(255) DEFAULT NULL,
  status INT(11) NOT NULL DEFAULT 1 COMMENT '1 reservada, 2 confirmada, 3 cancelada ',
  observacao TEXT DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX UK_reserva_id(id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 29,
AVG_ROW_LENGTH = 4096,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Create index `IDX_reserva_dia` on table `reserva`
--
ALTER TABLE reserva 
  ADD INDEX IDX_reserva_dia(dia);

--
-- Create index `IDX_reserva_status` on table `reserva`
--
ALTER TABLE reserva 
  ADD INDEX IDX_reserva_status(status);

--
-- Create index `UK_reserva` on table `reserva`
--
ALTER TABLE reserva 
  ADD UNIQUE INDEX UK_reserva(sala_id, periodo_id, dia);

--
-- Create foreign key
--
ALTER TABLE reserva 
  ADD CONSTRAINT FK_reserva_periodo_id FOREIGN KEY (periodo_id)
    REFERENCES periodo(id);

--
-- Create foreign key
--
ALTER TABLE reserva 
  ADD CONSTRAINT FK_reserva_sala_id FOREIGN KEY (sala_id)
    REFERENCES sala(id);

--
-- Create table `usuario`
--
CREATE TABLE usuario (
  id INT(11) NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) DEFAULT NULL,
  email VARCHAR(50) DEFAULT NULL,
  senha VARCHAR(32) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX UK_usuario_id(id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 5,
AVG_ROW_LENGTH = 16384,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Create index `UK_usuario_email` on table `usuario`
--
ALTER TABLE usuario 
  ADD UNIQUE INDEX UK_usuario_email(email(15));

-- 
-- Dumping data for table sala
--
INSERT INTO sala VALUES
(1, 'Sala 1'),
(2, 'Sala 2'),
(3, 'Sala 3'),
(4, 'Sala 4'),
(5, 'Sala 5'),
(6, 'Sala 6');

-- 
-- Dumping data for table periodo
--
INSERT INTO periodo VALUES
(1, '19:40'),
(2, '21:30'),
(3, '07:45'),
(4, '10:30');

-- 
-- Dumping data for table usuario
--
INSERT INTO usuario VALUES
(3, 'teste', 'teste', '698dc19d489c4e4db73e28a713eab07b');

-- 
-- Dumping data for table reserva
--
INSERT INTO reserva VALUES
(27, 1, 4, '2021-09-23', 'teste1', 'teste2', 1, 'teste3'),
(28, 1, 4, '2021-09-30', 'teste1', 'teste2', 3, 'teste3');

-- 
-- Restore previous SQL mode
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Enable foreign keys
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;