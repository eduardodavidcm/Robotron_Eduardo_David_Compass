x = int(input("manda o x: "))
if (x%2 == 0) :
  fat = 1
  i = 2
  while i <= x:
      fat = fat*i
      i = i + 1
  print(fat)
else :
  i=0
  while (i<11) :
    print(x*i)
    i = i+1