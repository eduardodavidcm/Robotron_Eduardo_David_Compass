import pandas as pd

arquivo = pd.read_csv('arquivo.csv', encoding="UTF-8", sep=",")
arquivo["movie_year"] = arquivo["Movie"] + " " + arquivo["Year"].astype(str)
print(arquivo["movie_year"])
