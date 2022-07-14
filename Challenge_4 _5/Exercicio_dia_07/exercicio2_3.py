#Nome do Estádio, o Placar e o Status do jogo dentro de variáveis e mostre-as
import json
def retornar_json():
    with open ("partida.json", encoding="UTF-8") as json_normal:
        json_manipulavel = json.load(json_normal)
        return json_manipulavel

json_retornado = retornar_json()
nome_estadio = json_retornado["copa-do-brasil"][0]["estadio"]["nome_popular"]
print(nome_estadio)
placar_jogo = json_retornado["copa-do-brasil"][0]["placar"]
print(placar_jogo)
status_jogo = json_retornado["copa-do-brasil"][0]["status"]
print(status_jogo)
