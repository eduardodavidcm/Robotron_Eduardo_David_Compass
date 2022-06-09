import json
def retornar_json():
    with open ("partida.json", encoding="UTF-8") as json_normal:
        json_manipulavel = json.load(json_normal)
        return json_manipulavel

json_retornado = retornar_json()
placar_mandante = json_retornado["copa-do-brasil"][0]["time_mandante"]["nome_popular"]
print(placar_mandante)