* Settings *
Documentation   Keywords e Variaveis para Ações do Endpoints dos Produtos




* Keywords *
POST Endpoint /produtos
    &{header}               Create Dictionary   Authorization=${token_auth}
    &{payload}              Create Dictionary   nome=Processsa  preco=900   descricao=i7     quantidade=100
    ${response}             POST on Session     serverest       /produtos   data=&{payload}      headers=${header}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

DELETE Endpoint /produtos
    &{header}               Create Dictionary   Authorization=${token_auth}
    ${response}             DELETE on Session     serverest       /produtos/${id_produto}       headers=${header}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

PUT Endpoint /produtos
    &{payload}              Create Dictionary   nome=Processs   preco=900   descricao=i7    quantidade=50
    ${response}             PUT on Session      serverest       /produtos/${id_produto}  data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

Validar Ter Criado Produto
    Should Be Equal         ${response.json()["message"]}   Cadastro realizado com sucesso
    Should Not Be Empty     ${response.json()["_id"]}

Criar um Produto e Armazenar ID
    POST Endpoint /produtos
    Validar Ter Criado Produto
    ${id_produto}           Set Variable    ${response.json()["_id"]}
    Log To Console          ID Produto: ${id_produto}
    Set Global Variable     ${id_produto}