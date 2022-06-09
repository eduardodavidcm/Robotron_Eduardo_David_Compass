
import json
def retornar_json():
    with open ("campeonato.json", encoding="UTF-8") as json_normal:
        json_manipulavel = json.load(json_normal)
        return json_manipulavel

json_retornado = retornar_json()

def chaves_principais():
    for key, value in json_retornado.items():
        print(key, ":", value)

chaves_principais()