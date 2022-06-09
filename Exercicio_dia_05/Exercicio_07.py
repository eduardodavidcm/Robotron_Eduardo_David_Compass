def media(valor_1: int, valor_2: int):
    return (valor_1 + valor_2) / 2
print("Digite 2 valores para calcular a media:")
valor_1 = int(input("Digite o 1º: "))
valor_2 = int(input("Digite o 2º: "))
print(f'A média é igual a: {media(valor_1, valor_2)}')