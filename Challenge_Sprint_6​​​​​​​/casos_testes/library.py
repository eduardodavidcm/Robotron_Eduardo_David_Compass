from lib2to3.pgen2 import token
import requests 
import json
import random
from faker import Faker


# Função que cadastra produtos de acordo com a quantidade
def Cadastrar_Produtos(vezes):
    lista = []
    fake = Faker()
    login = {"email": "fulano@qa.com", "password": "teste"}
    i = requests.post("http://localhost:3000/login", data=login)
    response = i.json()
    token_auth = response["authorization"]

    headers = {"monitor": 'false', "Authorization": token_auth}
    
    for c in range(vezes):
        nome = fake.name()
        preco = random.randint(20, 1500)
        descricao = fake.text()
        quantidade = random.randint(2000, 5000)
        produto = {"nome": nome, "preco": preco, "descricao": descricao, "quantidade": quantidade}
        u = requests.post(f"http://localhost:3000/produtos", headers=headers, data=produto)
        response = u.json()
        lista.append(response)
    
    return lista

# Função que Cadastra usuários de acordo com a quantidade
def Cadastrar_Usuarios(vezes):
    lista = []
    fake = Faker()
    headers = {"monitor": 'false'} 

    for c in range(vezes):
        nome = fake.name()
        email = fake.email()
        password = fake.password()
        usuario = {"nome": nome, "email": email, "password": password, "administrador": "true"}
        u = requests.post(f"http://localhost:3000/usuarios", headers=headers, data=usuario)
        response = u.json()
        lista.append(response)
    
    return lista

# Função que retorna usuários com carrinho
def Usuarios_Com_Carrinho(quantidade):
    lista_users_carrinho = []
    lista_aleatoria_users = []   
    headers = {"monitor": 'false'}
    
    r = requests.get("http://localhost:3000/carrinhos")
    carrinhos = r.json()                       
    
    for c in range(carrinhos["quantidade"]):
        idUsuario = carrinhos["carrinhos"][c]["idUsuario"]
        lista_users_carrinho.append(idUsuario)

    while len(lista_aleatoria_users) < quantidade:
        pesquisa_id = random.choice(lista_users_carrinho)
        u = requests.get(f"http://localhost:3000/usuarios/{pesquisa_id}", headers=headers)
        dados_user = u.json()
        if dados_user not in lista_aleatoria_users:
            lista_aleatoria_users.append(dados_user)
    
    return lista_aleatoria_users
        



