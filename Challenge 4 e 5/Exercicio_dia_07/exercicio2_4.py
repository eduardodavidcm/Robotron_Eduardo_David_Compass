#No JSON 1 printe todas as chaves e valores do time visitante
import json
def retornar_json():
    with open ("partida.json", encoding="UTF-8") as json_normal:
        json_manipulavel = json.load(json_normal)
        return json_manipulavel

json_retornado = retornar_json()
time_visitante = json_retornado["copa-do-brasil"][0]["time_visitante"]
print(time_visitante)
