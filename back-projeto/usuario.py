class Usuario:
    def __init__(self, id_usuario, nome_usuario, email_usuario, tel_usuario, senha_usuario, cargo_usuario, cpf_usuario):
        self.id_usuario = id_usuario
        self.nome_usuario = nome_usuario
        self.email_usuario = email_usuario
        self.tel_usuario = tel_usuario
        self.senha_usuario = senha_usuario
        self.cargo_usuario = cargo_usuario
        self.cpf_usuario = cpf_usuario

    def __repr__(self):
        return f"Usuario(ID: {self.id_usuario}, Nome: {self.nome_usuario}, Cargo: {self.cargo_usuario})"
