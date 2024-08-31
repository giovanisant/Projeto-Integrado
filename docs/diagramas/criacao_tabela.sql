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
  `nome` VARCHAR(30) NULL DEFAULT NULL,
  `sobrenome` VARCHAR(30) NULL DEFAULT NULL,
  `email` VARCHAR(30) NULL DEFAULT NULL,
  `cargo` VARCHAR(20) NULL DEFAULT NULL,
  `cpf` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id_usuario`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
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
  `tipo_servico` VARCHAR(30) NULL DEFAULT NULL,
  `cad_usuario_id_usuario` INT(11) NOT NULL,
  `cad_pagamento_cod_pagamento` INT(11) NOT NULL,
  PRIMARY KEY (`cod_orcamento`, `cad_usuario_id_usuario`, `cad_pagamento_cod_pagamento`),
  INDEX `fk_cad_orcamento_cad_usuario1_idx` (`cad_usuario_id_usuario` ASC),
  INDEX `fk_cad_orcamento_cad_pagamento1_idx` (`cad_pagamento_cod_pagamento` ASC),
  CONSTRAINT `fk_cad_orcamento_cad_usuario1`
    FOREIGN KEY (`cad_usuario_id_usuario`)
    REFERENCES `projeto_integrador`.`cad_usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cad_orcamento_cad_pagamento1`
    FOREIGN KEY (`cad_pagamento_cod_pagamento`)
    REFERENCES `projeto_integrador`.`cad_pagamento` (`cod_pagamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `projeto_integrador`.`cad_servico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projeto_integrador`.`cad_servico` (
  `tipo_servico` VARCHAR(30) NULL DEFAULT NULL,
  `duracao_servico` VARCHAR(10) NULL DEFAULT NULL,
  `localizacao_servico` VARCHAR(40) NULL DEFAULT NULL,
  `cad_usuario_id_usuario` INT(11) NOT NULL,
  PRIMARY KEY (`cad_usuario_id_usuario`),
  CONSTRAINT `fk_cad_servico_cad_usuario1`
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
  `sobrenome_cliente` VARCHAR(30) NULL DEFAULT NULL,
  `email_cliente` VARCHAR(30) NULL DEFAULT NULL,
  `telefone_cliente` VARCHAR(20) NULL DEFAULT NULL,
  `cpf_cliente` VARCHAR(15) NULL DEFAULT NULL,
  `cad_orcamento_cod_orcamento` INT(11) NOT NULL,
  PRIMARY KEY (`id_cliente`, `cad_orcamento_cod_orcamento`),
  INDEX `fk_tbl_cliente_cad_orcamento_idx` (`cad_orcamento_cod_orcamento` ASC),
  CONSTRAINT `fk_tbl_cliente_cad_orcamento`
    FOREIGN KEY (`cad_orcamento_cod_orcamento`)
    REFERENCES `projeto_integrador`.`cad_orcamento` (`cod_orcamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `projeto_integrador`.`cad_usuario_has_cad_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projeto_integrador`.`cad_usuario_has_cad_usuario` (
  `cad_usuario_id_usuario` INT(11) NOT NULL,
  `cad_usuario_id_usuario1` INT(11) NOT NULL,
  PRIMARY KEY (`cad_usuario_id_usuario`, `cad_usuario_id_usuario1`),
  INDEX `fk_cad_usuario_has_cad_usuario_cad_usuario2_idx` (`cad_usuario_id_usuario1` ASC),
  INDEX `fk_cad_usuario_has_cad_usuario_cad_usuario1_idx` (`cad_usuario_id_usuario` ASC),
  CONSTRAINT `fk_cad_usuario_has_cad_usuario_cad_usuario1`
    FOREIGN KEY (`cad_usuario_id_usuario`)
    REFERENCES `projeto_integrador`.`cad_usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cad_usuario_has_cad_usuario_cad_usuario2`
    FOREIGN KEY (`cad_usuario_id_usuario1`)
    REFERENCES `projeto_integrador`.`cad_usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;