print('Digite a nota 1 e 2 para saber a média e se é par ou impar:')
nota1 = int(input('Digite a primeira nota: '))
nota2 = int(input('Digite a segunda nota: '))
media = (nota1 + nota2) / 2
print('Media das notas:{:}' .format(media))
resultado = media % 2
if resultado == 0:
    print('O número {} é Par' .format(media))
else:
    print('O número {} é Impar' .format(media))