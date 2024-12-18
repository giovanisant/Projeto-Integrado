class Cliente:
    def __init__(self, id_cliente, nome_cliente, email_cliente, tel_cliente, cpf_cliente):
        self.id_cliente = id_cliente
        self.nome_cliente = nome_cliente
        self.email_cliente = email_cliente
        self.tel_cliente = tel_cliente
        self.cpf_cliente = cpf_cliente
        
    def solicitar_orcamento(self):
        print(f"{self.nome_cliente} solicitou um orçamento.")
    
    def solicitar_servico(self):
        print(f"{self.nome_cliente} solicitou um serviço.")
        
    def atualizar_informacoes(self, nome=None, email=None, tel=None):
        if nome:
            self.nome_cliente = nome
        if email:
            self.email_cliente = email
        if tel:
            self.tel_cliente = tel
        print("Informações atualizadas.")

    def __repr__(self):
        return f"Cliente(ID: {self.id_cliente}, Nome: {self.nome_cliente}, Email: {self.email_cliente}, Telefone: {self.tel_cliente}, CPF: {self.cpf_cliente})"
