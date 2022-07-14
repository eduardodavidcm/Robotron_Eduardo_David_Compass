ent = float(input("manda"))
print("anos = " + str(int(ent/365)))
ent = ent%365
print("meses = " + str(int(ent/30)))
ent = ent%30
print("dias = " + str(int(ent)))