#Sessão para configuração, documentação, importação de aquivos e librarys
*** Settings ***
Documentation    Arquivo Que Contem As Keywords Do EndPoint Login
Resource         ../support/base.resource

#Sessão para criação de keywords
*** Keywords ***
Logar E Salvar Token Como
    [Documentation]                                        
    ...                                                    Tipos de usuario Aceitos:
    ...                                                    - "Administrador"
    ...                                                    - "Nao Administrador"
    [Arguments]                                            ${tipo}= Nao Administrador
    ${usuario_valido}                                      Cadastrar Novo Usuario                                                            ${tipo}
    Remove From Dictionary                                 ${usuario_valido}                                                                 nome                                               administrador    _id
    POST Endpoint "/login" Com Body "${usuario_valido}"
    Validar Status Code "200"
    Validar Mensagem "Login realizado com sucesso"
    Validar Token
    &{headers}                                             Create Dictionary                                                                 Authorization=${response_body["authorization"]}
    Set Test Variable                                      ${headers}

Logar E Salvar Token Usando ID Do Usuario "${id}"
    ${usuario} =                                           GET Usuario Por ID "${id}"
    Remove From Dictionary                                 ${usuario}                    nome                                               administrador    _id
    POST Endpoint "/login" Com Body "${usuario}"
    Validar Status Code "200"
    Validar Mensagem "Login realizado com sucesso"
    Validar Token
    &{headers}                                             Create Dictionary             Authorization=${response_body["authorization"]}
    Set Test Variable                                      ${headers}

Validar Token
    Should Not Be Empty    ${response_body["authorization"]}