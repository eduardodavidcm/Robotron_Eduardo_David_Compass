import pandas as pd

arquivo = pd.read_csv('arquivo.csv', encoding="UTF-8", sep=",")

print(arquivo.loc[(arquivo['Year'] >= 1987) & (arquivo['Year'] <= 1999), ['Year','Name', 'Age',]])