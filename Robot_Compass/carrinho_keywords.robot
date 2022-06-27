* Settings *
Library     RequestsLibrary
Resource        ./login_keywords.robot
Resource        ./common.robot

* Keywords *
POST Endpoint /carrinhos
    &{header}               Create Dictionary   Authorization=${token_auth}
    &{payload}              Create Dictionary   IdProduto=BeeJh5lz3Dk6kSIzA quantidade=1
    ${response}             POST on Session     serverest       /carrinhos  json=&{payload}      headers=${header}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

Validar Ter Criado carrinho
    Should Be Equal         ${response.json()["message"]}   Cadastro realizado com sucesso
    Should Not Be Empty     ${response.json()["_id"]}

Criar um Carrinho e Armazenar ID
    POST Endpoint /carrinhos
    Validar Ter Criado Carrinho
    ${id_carrinho}           Set Variable    ${response.json()["_id"]}
    Log To Console          ID Produto: ${id_carrinho}
    Set Global Variable     ${id_carrinho}