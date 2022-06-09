idade = int (input('Digite a sua idade:'))

if idade > 18:
    print('Você é maior da idade')
elif idade >= 12 and idade < 18:
    print("Você é um adolescente")
elif idade < 12:
    print("Você é uma criança")