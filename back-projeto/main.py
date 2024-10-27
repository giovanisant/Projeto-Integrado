from cliente import Cliente
from orcamento import Orcamento
from usuario import Usuario
from pagamento import Pagamento
from agendamento import Agendamento
from servico import Servico

def main():
    # Exemplo 
    cliente = Cliente(1, "João Silva", "joao@example.com", "12345678909", "123456789")
    cliente.solicitar_orcamento()

    orcamento = Orcamento(1, "Serviço de Limpeza", 150.00, cliente.cpf_cliente)
    orcamento.enviar_orcamento()
    
    usuario = Usuario(1, "Maria", "maria@example.com", "98765432100", "senha123")
    usuario.login()
    
    servico = Servico(1, "Limpeza Geral", "Limpeza completa da residência", 150.00)
    print(servico.obter_detalhes_servico())
    
    pagamento = Pagamento(1, "João Silva", 1, 150.00, "26/10/2024","Aprovado")
    print(pagamento.status_pagamento())
    
    agendamento = Agendamento(1, "Rua Tapajos, nº 50", "13:50 26/10/2024", 1, 1 )
    agendamento.agendar_servico()
    
if __name__ == "__main__":
    main()
