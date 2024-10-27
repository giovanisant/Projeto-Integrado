class Pagamento:
    def __init__(self, id_pagamento, id_cliente, id_orcamento, valor_pagamento, data_pagamento, status_pagamento):
        self.id_pagamento = id_pagamento
        self.id_cliente = id_cliente
        self.id_orcamento = id_orcamento
        self.valor_pagamento = valor_pagamento
        self.data_pagamento = data_pagamento
        self.status_pagamento = status_pagamento
        
    def efetuar_pagamento(self):
        print(f"Pagamento de {self.valor_pagamento} efetuado.")

    def verificar_status(self):
        return self.status_pagamento
    
    def reembolsar(self):
        print(f"Pagamento {self.id_pagamento} reembolsado.")
    
    def __repr__(self):
        return f"Pagamento(ID: {self.id_pagamento}, Cliente ID: {self.id_cliente}, Orçamento ID: {self.id_orcamento}, Data: {self.data_pagamento})"
