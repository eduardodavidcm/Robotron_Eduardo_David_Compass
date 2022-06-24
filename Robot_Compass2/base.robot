* Settings *
Documentation   Arquivo simples para requisições HTTP em APIS
Library         RequestsLibrary

#Sessão para setagem de variáveis para utilização
* Variables *

#Sessão para criação dos cenários de teste
* Test Cases *
Cenario: GET Todos os Usuarios 200
    Criar Sessao
    GET Endpoint /usuarios
    Validar Status Code "200"
Cenario: POST cadastrar Usuario 201
    Criar Sessao
    POST Endpoint /usuarios
    Validar Status Code "201"
Cenario: PUT Editar Usuario 200
    Criar Sessao
    PUT Endpoint /usuarios
    Validar Status Code "200"
Cenario: DELETE Deletar Usuario 200
    Criar Sessao
    DELETE Endpoint /usuarios
    Validar Status Code "200"

#Sessão para criação de Keywords Personalizadas
* Keywords *
Criar Sessao
    Create Session  serverest   http://localhost:3000

GET Endpoint /usuarios
    ${response}             GET on Session      serverest       /usuarios
    Set Global Variable     ${response}

POST Endpoint /usuarios
    &{payload}              Create Dictionary   nome=jarbeas priestyy   email=testeeddell@gmail.com   password=123    administrador=true
    ${response}             POST on Session  serverest   /usuarios  data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

PUT Endpoint /usuarios
    &{payload}              Create Dictionary   nome=jersos priest   email=testeipriestufdsfll@gmail.com   password=123    administrador=true
    ${response}             PUT on Session  serverest   /usuarios/L9mwvYxK4CIbNjNB  data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

DELETE Endpoint /usuarios
    ${response}     DELETE on Session   serverest /usuarios/id

Validar Status Code "${statuscode}"
    Should Be True      ${response.status_code} == ${statuscode}
