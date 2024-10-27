class Usuario:
    def __init__(self, id_usuario, nome_usuario, email_usuario, tel_usuario, senha_usuario, cargo_usuario, cpf_usuario):
        self.id_usuario = id_usuario
        self.nome_usuario = nome_usuario
        self.email_usuario = email_usuario
        self.tel_usuario = tel_usuario
        self.senha_usuario = senha_usuario
        self.cargo_usuario = cargo_usuario
        self.cpf_usuario = cpf_usuario
        
    def criar_orcamento(self):
        print(f"{self.nome_usuario} criou um orçamento.")
        
    def atendimento(self):
        print(f"{self.nome_usuario} está atendendo um cliente.")
    
    def login(self):
        print(f"{self.nome_usuario} fez login.")
    
    def atualizar_perfil(self, nome=None, email=None, telefone=None, cpf=None):
        if nome:
            self.nome_usuario = nome
        if email:
            self.email_usuario = email
        if telefone:
            self.tel_usuario = telefone
        if cpf:
            self.cpf_usuario = cpf
        print("Perfil atualizado.")

    def __repr__(self):
        return f"Usuario(ID: {self.id_usuario}, Nome: {self.nome_usuario}, Cargo: {self.cargo_usuario})"
