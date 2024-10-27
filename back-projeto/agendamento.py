class Agendamento:
    def __init__(self, id_agendamento, endereco_agendamento, data_hora_agendamento, id_cliente, id_usuario):
        self.id_agendamento = id_agendamento
        self.endereco_agendamento = endereco_agendamento
        self.data_hora_agendamento = data_hora_agendamento
        self.id_cliente = id_cliente
        self.id_usuario = id_usuario

    def agendar_servico(self):
        print(f"Serviço agendado para {self.data_hora_agendamento} em {self.endereco_agendamento}.")
        
    def cancelar_agendamento(self):
        print(f"Agendamento {self.id_agendamento} cancelado.")
    
    def reagendar(self, nova_data_hora):
        self.data_hora_agendamento = nova_data_hora
        print(f"Agendamento reagendado para {self.data_hora_agendamento}.")
    
    def __repr__(self):
        return f"Agendamento(ID: {self.id_agend}, Endereço: {self.endereco_agend}, Data: {self.data_hora_agend}, Cliente: {self.id_cliente})"
