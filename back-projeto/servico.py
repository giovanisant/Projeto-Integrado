class Servico:
    def __init__(self, id_servico, nome_servico, descricao_servico, valor_servico, id_usuario, id_cliente):
        self.id_servico = id_servico
        self.nome_servico = nome_servico
        self.descricao_servico = descricao_servico
        self.valor_servico = valor_servico
        self.id_usuario = id_usuario
        self.id_cliente = id_cliente

    def obter_detalhes_servico(self):
        return f"{self.nome_servico}: {self.descricao_servico}"
    
    def tipo_servico(self):
        return f"PRIORIDADE"

    def valores_adicionais_servico(self):
        return f"Valor do serviço: {self.valor_servico}"

    def status_servico(self):
        return "Disponível"
    
    def __repr__(self):
        return f"Serviço(ID: {self.id_servico}, Nome do serviço: {self.nome_servico}, Descrição: {self.descricao_servico}, Valor: {self.valor_servico})"
    