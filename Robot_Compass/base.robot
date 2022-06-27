* Settings *
Documentation   Arquivo simples para requisições HTTP em APIS
Library         RequestsLibrary
Resource        ./usuarios_keywords.robot
Resource        ./login_keywords.robot
Resource        ./produtos_keywords.robot
#Sessão para setagem de variáveis para utilização
* Variables *

#Sessão para criação dos cenários de teste
* Test Cases *
Cenario: GET Todos os Usuarios 200
    [tags]      GET
    Criar Sessao
    GET Endpoint /usuarios
    Validar Status Code "200"
    Validar Quantidade "${10}"
    Printa Conteudo Response
Cenario: POST cadastrar Usuario 201
    [tags]      POST
    Criar Sessao
    POST Endpoint /usuarios
    Validar Status Code "201"
    Validar Se Mensagem Contem "sucesso"

Cenario: PUT Editar Usuario 201
    [tags]      PUT
    Criar Sessao
    PUT Endpoint /usuarios
    Validar Status Code "201"

Cenario: DELETE Deletar Usuario 200
    [tags]      DELETE
    Criar Sessao
    DELETE Endpoint /usuarios
    Validar Status Code "200"
    
Cenario: POST Realizar Login 200
    [tags]      POSTLOGIN
    Criar Sessao
    POST Endpoint /login
    Validar Status Code "200"

Cenario: POST Criar Produto 201
    [tags]      POSTPRODUTO
    Criar Sessao
    Fazer Login e Armazenar Token
    POST Endpoint /produtos
    Validar Status Code "201"

Cenario: DELETE Excluir Produto 200
    [tags]      DELETEPRODUTO
    Criar Sessao
    Fazer Login e Armazenar Token
    Criar um Produto e Armazenar ID
    DELETE Endpoint /produtos
    Validar Status Code "200"

Cenario: POST Criar Usuario de Massa Estatico 201
    [tags]      POSTCRIARUSUARIOESTATICO
    Criar Sessao
    Criar Usuario Estatio Valido
    Validar Status Code "201"

#Sessão para criação de Keywords Personalizadas
* Keywords *
Criar Sessao
    Create Session  serverest   http://localhost:3000
