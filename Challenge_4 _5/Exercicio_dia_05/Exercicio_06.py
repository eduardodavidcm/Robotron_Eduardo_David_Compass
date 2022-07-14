inicio = 2
valor = int(input("Digite um valor para saber os impares entre 0 e X :")) 
for num in range(inicio, valor + 1): 
      if num % 2 != 0: 
        print(num)