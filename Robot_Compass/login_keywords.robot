* Settings *
Documentation   Keywords e Variaveis para Ações do Endpoints do Login

* Variables *
${email_para_login}             fulano@qa.com
${password_para_login}          teste
${emailinvalido_para_login}     fulanoo@qa.com

* Keywords *
POST Endpoint /login
    &{payload}              Create Dictionary   email=${email_para_login}   password=${password_para_login}
    ${response}             POST on Session     serverest       /login  data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

Validar Ter Logador
    Should Be Equal         ${response.json()["message"]}   Login realizado com sucesso
    Should Not Be Empty     ${response.json()["authorization"]}

Fazer Login e Armazenar Token
    POST Endpoint /login
    Validar Ter Logador
    ${token_auth}           Set Variable    ${response.json()["authorization"]}
    Log To Console          Token Salvo: ${token_auth}
    Set Global Variable     ${token_auth}

Login Invalido
    &{payload}              Create Dictionary   email=${emailinvalido_para_login}   password=${password_para_login}
    ${response}             POST on Session     serverest       /login  data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}
