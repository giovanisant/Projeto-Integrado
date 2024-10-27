class Orcamento:
    def __init__(self, id_orcamento, descricao_orcamento, valor_orcamento,cpf_cliente, id_usuario, id_pagamento):
        self.id_orcamento = id_orcamento
        self.descricao_orcamento = descricao_orcamento
        self.valor_orcamento = valor_orcamento
        self.status_orcamento = "Pendente"
        self.id_usuario = id_usuario
        self.cpf_cliente = cpf_cliente
        self.id_pagamento = id_pagamento
        
    def calcular_total(self):
        # Vamos adicionar um calculo
        return self.valor_orcamento
    
    def aprovar(self):
        self.status_orcamento = "Aprovado"
        print(f"Orçamento {self.id_orcamento} aprovado.")
        
    def recusar(self):
        self.status_orcamento = "Recusado"
        print(f"Orçamento {self.id_orcamento} recusado.")

    def enviar_orcamento(self):
        print(f"Orçamento {self.id_orcamento} enviado para o cliente.")
        
    def gerar_fatura(self):
        print(f"Fatura gerada para o orçamento {self.id_orcamento}.")
    
    def __repr__(self):
        return f"Orcamento(ID: {self.id_orcamento}, Descrição: {self.descricao}, Valor: {self.valor_orcamento})"
