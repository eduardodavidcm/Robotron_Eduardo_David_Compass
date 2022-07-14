
import json
def retornar_json():
    with open ("campeonato.json", encoding="UTF-8") as json_normal:
        json_manipulavel = json.load(json_normal)
        return json_manipulavel

json_retornado = retornar_json()
edicao_atual = json_retornado["edicao_atual"]
print("Edição Atual:\n", edicao_atual)

fase_atual = json_retornado["fase_atual"]
print("Fase Atual:\n", fase_atual)

rodada_atual = json_retornado["rodada_atual"]
print("Rodada atual:\n", rodada_atual)


