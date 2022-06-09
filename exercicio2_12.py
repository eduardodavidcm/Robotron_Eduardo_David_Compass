import pandas as pd

arquivo = pd.read_csv('arquivo.csv', encoding="UTF-8", sep=",")
print(arquivo.loc[63]["Name"])
print(arquivo.loc[88]["Name"])