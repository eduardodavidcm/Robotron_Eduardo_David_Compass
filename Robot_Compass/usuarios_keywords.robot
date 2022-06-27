* Settings *
Documentation   Keywords e Variaveis para Ações do Endpoints do Usuario
Resource        ./common.robot

* Variables *
${nome_do_usuario}      herbert richads
${senha_do_usuario}     teste123
${email_do_usuario}    testestestestestes@gmail.com


* Keywords *
GET Endpoint /usuarios
    ${response}             GET on Session      serverest       /usuarios
    Set Global Variable     ${response}

POST Endpoint /usuarios
    &{payload}              Create Dictionary   nome=${nome_do_usuario}   email=${email_do_usuario}   password=${senha_do_usuario}    administrador=true
    ${response}             POST on Session     serverest       /usuarios  json=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

PUT Endpoint /usuarios
    &{payload}              Create Dictionary   nome=jerssas priest   email=testeiprisessdsfll@gmail.com   password=123    administrador=true
    ${response}             PUT on Session      serverest       /usuarios/L9mwvYxK4CIbNjNB  data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

DELETE Endpoint /usuarios
    ${response}             DELETE on Session   serverest       /usuarios/L9mwvYxK4CIbNjNB
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

Validar Quantidade "${quantidade}"
    Should Be Equal     ${response.json()["quantidade"]}    ${quantidade}

Validar Se Mensagem Contem "${palavra}"
    Should Contain      ${response.json()["message"]}       ${palavra}

Printa Conteudo Response
    Log To Console      Response: ${response.json()["usuarios"][0]["nome"]}

Criar Usuario Estatio Valido
    ${json}                 Importar JSON Estatico      json_usuario_ex.json
    ${payload}              Set Variable        ${json["user_valido"]}
    Set Global Variable     ${payload}
    POST Endpoint /usuarios

