class Agendamento:
    def __init__(self, id_agend, endereco_agend, data_hora_agend, id_cliente, id_usuario):
        self.id_agend = id_agend
        self.endereco_agend = endereco_agend
        self.data_hora_agend = data_hora_agend
        self.id_cliente = id_cliente
        self.id_usuario = id_usuario

    def __repr__(self):
        return f"Agendamento(ID: {self.id_agend}, Endereço: {self.endereco_agend}, Data: {self.data_hora_agend})"
