class Cliente:
    def __init__(self, id_cliente, nome_cliente, email_cliente, tel_cliente, cpf_cliente):
        self.id_cliente = id_cliente
        self.nome_cliente = nome_cliente
        self.email_cliente = email_cliente
        self.tel_cliente = tel_cliente
        self.cpf_cliente = cpf_cliente

    def __repr__(self):
        return f"Cliente(ID: {self.id_cliente}, Nome: {self.nome_cliente}, Email: {self.email_cliente}, Telefone: {self.tel_cliente}, CPF: {self.cpf_cliente})"


class Usuario:
    def __init__(self, id_usuario, nome_usuario, email_usuario, tel_usuario, senha_usuario, cargo_usuario, cpf_usuario):
        self.id_usuario = id_usuario
        self.nome_usuario = nome_usuario
        self.email_usuario = email_usuario
        self.tel_usuario = tel_usuario
        self.senha_usuario = senha_usuario
        self.cargo_usuario = cargo_usuario
        self.cpf_usuario = cpf_usuario

    def __repr__(self):
        return f"Usuario(ID: {self.id_usuario}, Nome: {self.nome_usuario}, Cargo: {self.cargo_usuario})"


class Agendamento:
    def __init__(self, id_agend, endereco_agend, data_hora_agend, id_cliente, id_usuario):
        self.id_agend = id_agend
        self.endereco_agend = endereco_agend
        self.data_hora_agend = data_hora_agend
        self.id_cliente = id_cliente
        self.id_usuario = id_usuario

    def __repr__(self):
        return f"Agendamento(ID: {self.id_agend}, Endereço: {self.endereco_agend}, Data: {self.data_hora_agend})"


class Pagamento:
    def __init__(self, id_pagamento, id_cliente, id_orcamento):
        self.id_pagamento = id_pagamento
        self.id_cliente = id_cliente
        self.id_orcamento = id_orcamento

    def __repr__(self):
        return f"Pagamento(ID: {self.id_pagamento}, Cliente ID: {self.id_cliente}, Orçamento ID: {self.id_orcamento})"


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


# Funções utilitárias
clientes = []
usuarios = []
agendamentos = []
pagamentos = []
orcamentos = []


def criar_cliente():
    id_cliente = len(clientes) + 1
    nome = input("Nome do cliente: ")
    email = input("Email do cliente: ")
    telefone = input("Telefone do cliente: ")
    cpf = input("CPF do cliente: ")
    cliente = Cliente(id_cliente, nome, email, telefone, cpf)
    clientes.append(cliente)
    print("Cliente criado com sucesso!")


def criar_usuario():
    id_usuario = len(usuarios) + 1
    nome = input("Nome do usuário: ")
    email = input("Email do usuário: ")
    telefone = input("Telefone do usuário: ")
    senha = input("Senha do usuário: ")
    cargo = input("Cargo do usuário: ")
    cpf = input("CPF do usuário: ")
    usuario = Usuario(id_usuario, nome, email, telefone, senha, cargo, cpf)
    usuarios.append(usuario)
    print("Usuário criado com sucesso!")


def criar_agendamento():
    id_agend = len(agendamentos) + 1
    endereco = input("Endereço do agendamento: ")
    data_hora = input("Data e hora do agendamento (YYYY-MM-DD HH:MM): ")
    id_cliente = int(input("ID do cliente: "))
    id_usuario = int(input("ID do usuário: "))
    agendamento = Agendamento(id_agend, endereco, data_hora, id_cliente, id_usuario)
    agendamentos.append(agendamento)
    print("Agendamento criado com sucesso!")


def criar_pagamento():
    id_pagamento = len(pagamentos) + 1
    id_cliente = int(input("ID do cliente: "))
    id_orcamento = int(input("ID do orçamento: "))
    pagamento = Pagamento(id_pagamento, id_cliente, id_orcamento)
    pagamentos.append(pagamento)
    print("Pagamento criado com sucesso!")


def criar_orcamento():
    id_orcamento = len(orcamentos) + 1
    descricao = input("Descrição do orçamento: ")
    valor = float(input("Valor do orçamento: "))
    id_usuario = int(input("ID do usuário: "))
    id_cliente = int(input("ID do cliente: "))
    id_pagamento = int(input("ID do pagamento: "))
    orcamento = Orcamento(id_orcamento, descricao, valor, id_usuario, id_cliente, id_pagamento)
    orcamentos.append(orcamento)
    print("Orçamento criado com sucesso!")


def listar_clientes():
    print("\nClientes:")
    for cliente in clientes:
        print(cliente)


def listar_usuarios():
    print("\nUsuários:")
    for usuario in usuarios:
        print(usuario)


def listar_agendamentos():
    print("\nAgendamentos:")
    for agendamento in agendamentos:
        print(agendamento)


def listar_pagamentos():
    print("\nPagamentos:")
    for pagamento in pagamentos:
        print(pagamento)


def listar_orcamentos():
    print("\nOrçamentos:")
    for orcamento in orcamentos:
        print(orcamento)


def menu():
    while True:
        print("\nMenu:")
        print("1. Criar Cliente")
        print("2. Criar Usuário")
        print("3. Criar Agendamento")
        print("4. Criar Pagamento")
        print("5. Criar Orçamento")
        print("6. Listar Clientes")
        print("7. Listar Usuários")
        print("8. Listar Agendamentos")
        print("9. Listar Pagamentos")
        print("10. Listar Orçamentos")
        print("0. Sair")
        opcao = input("Escolha uma opção: ")

        if opcao == "1":
            criar_cliente()
        elif opcao == "2":
            criar_usuario()
        elif opcao == "3":
            criar_agendamento()
        elif opcao == "4":
            criar_pagamento()
        elif opcao == "5":
            criar_orcamento()
        elif opcao == "6":
            listar_clientes()
        elif opcao == "7":
            listar_usuarios()
        elif opcao == "8":
            listar_agendamentos()
        elif opcao == "9":
            listar_pagamentos()
        elif opcao == "10":
            listar_orcamentos()
        elif opcao == "0":
            print("Saindo...")
            break
        else:
            print("Opção inválida, tente novamente.")


if __name__ == "__main__":
    menu()