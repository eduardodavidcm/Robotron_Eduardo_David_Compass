import json
def retornar_json():
    with open ("partida.json", encoding="UTF-8") as json_normal:
        json_manipulavel = json.load(json_normal)
        return json_manipulavel

json_retornado = retornar_json()

vencedor = json_retornado["time_visitante"]
print(vencedor["nome_popular"])