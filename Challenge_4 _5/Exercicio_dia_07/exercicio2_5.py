#Guarde o arquivo JSON 2 nomeando-o como campeonato em uma variável e printe todos os seus dados
with open ("campeonato.json", "r", encoding="UTF-8") as arquivo:
        conteudo = arquivo.read()
        print(conteudo)