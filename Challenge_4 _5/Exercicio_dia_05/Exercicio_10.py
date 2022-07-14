frutas = []
tres_frutas = ["maça", "banana", "pera"]

for n in range(3):
    frutas.append((input(f'Digite a {n+1}ª fruta: ')))

frutas_iguais = set(frutas) & set(tres_frutas)

if frutas_iguais != set():
    print('Frutas iguais:', tres_frutas)
else:
    print("Frutas diferentes")