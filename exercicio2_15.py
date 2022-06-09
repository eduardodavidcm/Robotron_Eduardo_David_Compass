import pandas as pd

arquivo = pd.read_csv('arquivo.csv', encoding="UTF-8", sep=",")
print(arquivo.loc[(arquivo['Movie'] != "The Revenant"), ['Movie']])
