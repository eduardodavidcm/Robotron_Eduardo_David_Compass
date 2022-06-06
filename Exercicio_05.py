i=0
vet = []
par = 0
while(i<20):
  print('Digite 20 valores para receber a média aritmética dos valores pares:')
  ent = int(input("Valor:"))
  if ent % 2 == 0:
    vet.append(ent)
    par = par + 1
  i = i+1
print(sum(vet)/par)