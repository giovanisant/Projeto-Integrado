import tkinter as tk
from tkinter import messagebox

def validate_login():
    username = entry_username.get()
    password = entry_password.get()

    if username == "admin" and password == "1234":
        messagebox.showinfo("Login", "Login realizado com sucesso!")
    else:
        messagebox.showerror("Erro", "Usuário ou senha inválidos!")


root = tk.Tk()
root.title("Tela de Login")

root.geometry("300x200")

label_username = tk.Label(root, text="Usuário")
label_username.pack(pady=10)

# Campo de entrada para o nome de usuário
entry_username = tk.Entry(root)
entry_username.pack(pady=5)

# Label e campo de entrada para senha
label_password = tk.Label(root, text="Senha")
label_password.pack(pady=10)

entry_password = tk.Entry(root, show="*")
entry_password.pack(pady=5)

# Botão de login
login_button = tk.Button(root, text="Login", command=validate_login)
login_button.pack(pady=20)

# Executa a interface gráfica
root.mainloop()
