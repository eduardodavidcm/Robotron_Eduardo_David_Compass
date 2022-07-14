
import pandas as pd
tabela = pd.read_csv('tabela.csv', encoding='UTF-8', sep=',')


def listar_simbolo():
    print(tabela.loc[:, ["Simbolo"]])

def listar_dados():
    elemento = input('Digite o simbolo do elemento: ')
    print(tabela.loc[tabela['Simbolo'] == elemento])

def mostrar_tabela():
    print(tabela)

def principal():
    X = int(input('1- Listar os simbolos da Tabela. \n2- Buscando pelo simbolo. \n3- Mostrar a tabela.\n'))
    if X == 1:
        listar_simbolo()
    elif X == 2:
        listar_dados()
    elif X == 3:
        mostrar_tabela()
    
principal()