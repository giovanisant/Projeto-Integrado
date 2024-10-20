CREATE TABLE tbl_clientes (
    id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(50) NOT NULL,
    email_cliente VARCHAR(50) NULL DEFAULT NULL,
    tel_cliente VARCHAR(20) NULL DEFAULT NULL,
    cpf_cliente VARCHAR(15) UNIQUE
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE tbl_usuarios (
    id_usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_usuario VARCHAR(50) NOT NULL,
    email_usuario VARCHAR(50) NULL DEFAULT NULL,
    tel_usuario VARCHAR(20) NULL DEFAULT NULL,
    senha_usuario VARCHAR(50) NOT NULL,
    cargo_usuario VARCHAR(20) NOT NULL,
    cpf_usuario VARCHAR(15) UNIQUE
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE tbl_agendamentos (
    id_agend INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    endereco_agend VARCHAR(100) NOT NULL,
    data_hora_agend DATETIME NULL DEFAULT NULL,
    id_cliente INT NOT NULL,
    id_usuario INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES tbl_clientes(id_cliente) ON DELETE CASCADE,
    FOREIGN KEY (id_usuario) REFERENCES tbl_usuarios(id_usuario) ON DELETE CASCADE
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE tbl_orcamento (
    id_orcamento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(500) NULL DEFAULT NULL,
    valor_orcamento DECIMAL(10,2) NOT NULL,
    id_usuario INT NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES tbl_usuarios(id_usuario) ON DELETE CASCADE,
    FOREIGN KEY (id_cliente) REFERENCES tbl_clientes(id_cliente) ON DELETE CASCADE
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE tbl_pagamentos (
    id_pagamento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_orcamento INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES tbl_clientes(id_cliente) ON DELETE CASCADE,
    FOREIGN KEY (id_orcamento) REFERENCES tbl_orcamento(id_orcamento) ON DELETE CASCADE
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;



--Esquema antigo
-- -- MySQL Workbench Forward Engineering

-- SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
-- SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
-- SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -- -----------------------------------------------------
-- -- Schema mydb
-- -- -----------------------------------------------------
-- -- -----------------------------------------------------
-- -- Schema projeto_integrado
-- -- -----------------------------------------------------

-- -- -----------------------------------------------------
-- -- Schema projeto_integrado
-- -- -----------------------------------------------------
-- CREATE SCHEMA IF NOT EXISTS `projeto_integrado` DEFAULT CHARACTER SET utf8 ;
-- USE `projeto_integrado` ;

-- -- -----------------------------------------------------
-- -- Table `projeto_integrado`.`tbl_agendamentos`
-- -- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS `projeto_integrado`.`tbl_agendamentos` (
--   `id_agend` INT(11) NOT NULL AUTO_INCREMENT,
--   `nome_usuario` VARCHAR(50) NULL DEFAULT NULL,
--   `nome_cliente` VARCHAR(50) NULL DEFAULT NULL,
--   `endereco_cliente` VARCHAR(100) NULL DEFAULT NULL,
--   `data_agendamento` VARCHAR(10) NULL DEFAULT NULL,
--   `hora_agendamento` VARCHAR(6) NULL DEFAULT NULL,
--   PRIMARY KEY (`id_agend`))
-- ENGINE = InnoDB
-- DEFAULT CHARACTER SET = utf8;


-- -- -----------------------------------------------------
-- -- Table `projeto_integrado`.`tbl_cliente`
-- -- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS `projeto_integrado`.`tbl_cliente` (
--   `id_cliente` INT(11) NOT NULL AUTO_INCREMENT,
--   `nome_cliente` VARCHAR(50) NULL DEFAULT NULL,
--   `email_cliente` VARCHAR(50) NULL DEFAULT NULL,
--   `telefone_cliente` VARCHAR(20) NULL DEFAULT NULL,
--   `cpf_cliente` VARCHAR(15) NULL DEFAULT NULL,
--   PRIMARY KEY (`id_cliente`))
-- ENGINE = InnoDB
-- AUTO_INCREMENT = 11
-- DEFAULT CHARACTER SET = utf8;


-- -- -----------------------------------------------------
-- -- Table `projeto_integrado`.`tbl_pagamento`
-- -- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS `projeto_integrado`.`tbl_pagamento` (
--   `cod_pagamento` INT(11) NOT NULL AUTO_INCREMENT,
--   `cpf_cliente` VARCHAR(15) NULL DEFAULT NULL,
--   `cod_orcamento` INT(5) NULL DEFAULT NULL,
--   PRIMARY KEY (`cod_pagamento`))
-- ENGINE = InnoDB
-- DEFAULT CHARACTER SET = utf8;


-- -- -----------------------------------------------------
-- -- Table `projeto_integrado`.`tbl_usuario`
-- -- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS `projeto_integrado`.`tbl_usuario` (
--   `id_usuario` INT(11) NOT NULL AUTO_INCREMENT,
--   `nome_usuario` VARCHAR(50) NULL DEFAULT NULL,
--   `email_usuario` VARCHAR(50) NULL DEFAULT NULL,
--   `senha_usuario` VARCHAR(50) NULL DEFAULT NULL,
--   `cargo_usuario` VARCHAR(20) NULL DEFAULT NULL,
--   `cpf_usuario` VARCHAR(15) NULL DEFAULT NULL,
--   `tbl_agendamentos_cod_agendamento` INT(11) NOT NULL,
--   PRIMARY KEY (`id_usuario`, `tbl_agendamentos_cod_agendamento`),
--   INDEX `fk_tbl_usuario_tbl_agendamentos1_idx` (`tbl_agendamentos_cod_agendamento` ASC),
--   CONSTRAINT `fk_tbl_usuario_tbl_agendamentos1`
--     FOREIGN KEY (`tbl_agendamentos_cod_agendamento`)
--     REFERENCES `projeto_integrado`.`tbl_agendamentos` (`cod_agendamento`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
-- ENGINE = InnoDB
-- AUTO_INCREMENT = 6
-- DEFAULT CHARACTER SET = utf8;


-- -- -----------------------------------------------------
-- -- Table `projeto_integrado`.`tbl_orcamento`
-- -- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS `projeto_integrado`.`tbl_orcamento` (
--   `cod_orcamento` INT(11) NOT NULL AUTO_INCREMENT,
--   `id_usuario` VARCHAR(30) NULL DEFAULT NULL,
--   `nome_usuario` VARCHAR(30) NULL DEFAULT NULL,
--   `cpf_cliente` VARCHAR(15) NULL DEFAULT NULL,
--   `descricao_servico` VARCHAR(500) NULL DEFAULT NULL,
--   `valor_orcamento` VARCHAR(14) NULL DEFAULT NULL,
--   `tbl_cliente_id_cliente` INT(11) NOT NULL,
--   `tbl_pagamento_cod_pagamento` INT(11) NOT NULL,
--   `tbl_usuario_id_usuario` INT(11) NOT NULL,
--   PRIMARY KEY (`cod_orcamento`, `tbl_cliente_id_cliente`, `tbl_pagamento_cod_pagamento`, `tbl_usuario_id_usuario`),
--   INDEX `fk_tbl_orcamento_tbl_cliente_idx` (`tbl_cliente_id_cliente` ASC),
--   INDEX `fk_tbl_orcamento_tbl_pagamento1_idx` (`tbl_pagamento_cod_pagamento` ASC),
--   INDEX `fk_tbl_orcamento_tbl_usuario1_idx` (`tbl_usuario_id_usuario` ASC),
--   CONSTRAINT `fk_tbl_orcamento_tbl_cliente`
--     FOREIGN KEY (`tbl_cliente_id_cliente`)
--     REFERENCES `projeto_integrado`.`tbl_cliente` (`id_cliente`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION,
--   CONSTRAINT `fk_tbl_orcamento_tbl_pagamento1`
--     FOREIGN KEY (`tbl_pagamento_cod_pagamento`)
--     REFERENCES `projeto_integrado`.`tbl_pagamento` (`cod_pagamento`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION,
--   CONSTRAINT `fk_tbl_orcamento_tbl_usuario1`
--     FOREIGN KEY (`tbl_usuario_id_usuario`)
--     REFERENCES `projeto_integrado`.`tbl_usuario` (`id_usuario`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
-- ENGINE = InnoDB
-- DEFAULT CHARACTER SET = utf8;


-- SET SQL_MODE=@OLD_SQL_MODE;
-- SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
-- SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;