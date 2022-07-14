lista = []

for n in range(15):
    lista.append(int(input(f'Digite o {n+1} valor: ')))
print("Valores da lista do último para o primeiro:")
for x in reversed(lista):
    print(x)