class Orcamento:
    def __init__(self, id_orcamento, descricao, valor_orcamento, id_usuario, id_cliente, id_pagamento):
        self.id_orcamento = id_orcamento
        self.descricao = descricao
        self.valor_orcamento = valor_orcamento
        self.id_usuario = id_usuario
        self.id_cliente = id_cliente
        self.id_pagamento = id_pagamento

    def __repr__(self):
        return f"Orcamento(ID: {self.id_orcamento}, Descrição: {self.descricao}, Valor: {self.valor_orcamento})"
