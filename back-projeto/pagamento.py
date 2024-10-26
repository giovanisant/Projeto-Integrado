class Pagamento:
    def __init__(self, id_pagamento, id_cliente, id_orcamento):
        self.id_pagamento = id_pagamento
        self.id_cliente = id_cliente
        self.id_orcamento = id_orcamento

    def __repr__(self):
        return f"Pagamento(ID: {self.id_pagamento}, Cliente ID: {self.id_cliente}, Orçamento ID: {self.id_orcamento})"
