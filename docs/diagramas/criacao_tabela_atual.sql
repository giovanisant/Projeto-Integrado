-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema projeto_integrador
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema projeto_integrador
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `projeto_integrador` DEFAULT CHARACTER SET utf8 ;
USE `projeto_integrador` ;

-- -----------------------------------------------------
-- Table `projeto_integrador`.`cad_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projeto_integrador`.`cad_usuario` (
  `id_usuario` INT(11) NOT NULL AUTO_INCREMENT,
  `nome_usuario` VARCHAR(50) NULL DEFAULT NULL,
  `email` VARCHAR(30) NULL DEFAULT NULL,
  `cargo` VARCHAR(20) NULL DEFAULT NULL,
  `cpf` VARCHAR(15) NULL DEFAULT NULL,
  `senha_usuario` VARCHAR(50) NULL,
  PRIMARY KEY (`id_usuario`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `projeto_integrador`.`cad_agendamentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projeto_integrador`.`cad_agendamentos` (
  `cod_agendamento` INT(11) NOT NULL,
  `nome_cliente` VARCHAR(50) NULL DEFAULT NULL,
  `data_agendamento` VARCHAR(10) NULL DEFAULT NULL,
  `hora_agendamento` VARCHAR(6) NULL DEFAULT NULL,
  `endereco_cliente` VARCHAR(100) NULL DEFAULT NULL,
  `nome_usuario` VARCHAR(50) NULL,
  `cad_usuario_id_usuario` INT(11) NOT NULL,
  PRIMARY KEY (`cod_agendamento`, `cad_usuario_id_usuario`),
  INDEX `fk_cad_agendamentos_cad_usuario1_idx` (`cad_usuario_id_usuario` ASC),
  CONSTRAINT `fk_cad_agendamentos_cad_usuario1`
    FOREIGN KEY (`cad_usuario_id_usuario`)
    REFERENCES `projeto_integrador`.`cad_usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `projeto_integrador`.`tbl_cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projeto_integrador`.`tbl_cliente` (
  `id_cliente` INT(11) NOT NULL AUTO_INCREMENT,
  `nome_cliente` VARCHAR(30) NULL DEFAULT NULL,
  `email_cliente` VARCHAR(30) NULL DEFAULT NULL,
  `telefone_cliente` VARCHAR(20) NULL DEFAULT NULL,
  `cpf_cliente` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id_cliente`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `projeto_integrador`.`cad_pagamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projeto_integrador`.`cad_pagamento` (
  `cod_pagamento` INT(11) NOT NULL AUTO_INCREMENT,
  `cpf_cliente` VARCHAR(15) NULL DEFAULT NULL,
  `cod_orcamento` INT(5) NULL DEFAULT NULL,
  PRIMARY KEY (`cod_pagamento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `projeto_integrador`.`cad_orcamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projeto_integrador`.`cad_orcamento` (
  `cod_orcamento` INT(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` VARCHAR(30) NULL DEFAULT NULL,
  `nome_usuario` VARCHAR(30) NULL DEFAULT NULL,
  `cpf_cliente` VARCHAR(15) NULL DEFAULT NULL,
  `valor_orcamento` VARCHAR(14) NULL DEFAULT NULL,
  `tbl_cliente_id_cliente` INT(11) NOT NULL,
  `cad_pagamento_cod_pagamento` INT(11) NOT NULL,
  `cad_usuario_id_usuario` INT(11) NOT NULL,
  `descricao_servico` VARCHAR(500) NULL,
  PRIMARY KEY (`cod_orcamento`, `tbl_cliente_id_cliente`, `cad_pagamento_cod_pagamento`, `cad_usuario_id_usuario`),
  INDEX `fk_cad_orcamento_tbl_cliente_idx` (`tbl_cliente_id_cliente` ASC),
  INDEX `fk_cad_orcamento_cad_pagamento1_idx` (`cad_pagamento_cod_pagamento` ASC),
  INDEX `fk_cad_orcamento_cad_usuario1_idx` (`cad_usuario_id_usuario` ASC),
  CONSTRAINT `fk_cad_orcamento_tbl_cliente`
    FOREIGN KEY (`tbl_cliente_id_cliente`)
    REFERENCES `projeto_integrador`.`tbl_cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cad_orcamento_cad_pagamento1`
    FOREIGN KEY (`cad_pagamento_cod_pagamento`)
    REFERENCES `projeto_integrador`.`cad_pagamento` (`cod_pagamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cad_orcamento_cad_usuario1`
    FOREIGN KEY (`cad_usuario_id_usuario`)
    REFERENCES `projeto_integrador`.`cad_usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
