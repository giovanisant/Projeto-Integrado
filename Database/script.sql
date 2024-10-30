CREATE TABLE tbl_clientes (
    id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(50) NOT NULL,
    email_cliente VARCHAR(50) NULL DEFAULT NULL,
    tel_cliente VARCHAR(20) NULL DEFAULT NULL,
    cpf_cliente BIGINT(11) UNIQUE,
    data_cliente DATETIME DEFAULT CURRENT_TIMESTAMP
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
    cpf_usuario BIGINT(11) UNIQUE,
    tipo_usuario VARCHAR(3) NOT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE tbl_agendamentos (
    id_agend INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    endereco_agend VARCHAR(150) NOT NULL,
    estado_agend VARCHAR(50) NOT NULL,
    cidade_agend VARCHAR(50) NOT NULL
    data_hora_agend DATETIME NULL DEFAULT NULL,
    data_criacao_agend DATETIME DEFAULT CURRENT_TIMESTAMP,
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
    data_orcamento DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES tbl_usuarios(id_usuario) ON DELETE CASCADE,
    FOREIGN KEY (id_cliente) REFERENCES tbl_clientes(id_cliente) ON DELETE CASCADE
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE tbl_pagamentos (
    id_pagamento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_orcamento INT NOT NULL,
    data_pagamento DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_cliente) REFERENCES tbl_clientes(id_cliente) ON DELETE CASCADE,
    FOREIGN KEY (id_orcamento) REFERENCES tbl_orcamento(id_orcamento) ON DELETE CASCADE
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;



