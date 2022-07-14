![compass logo](imagem/compass.png)

# Testes Automatizados da API pública da [Serverest](https://serverest.dev/) Utilizando Robot Framework

O Challenge da Sprint 6​​​​​​​ da trilha Robotron - PB da [compass.uol](https://compass.uol/pt/?utm_source=google-ads&utm_medium=ppc&utm_campaign=compasso-uol-institucional&utm_term=compass%20uol&gclid=CjwKCAjw2rmWBhB4EiwAiJ0mtWalabBc8Gmx4-wPDUpL_vNHSMPuB6x1LnQLGLvAI__zqAqu5cynPxoCsOwQAvD_BwE)

O projeto consiste na criação de testes automatizados com Robot para a validação da API. 



## Pré requisitos:
- Bibliotecas
    -  pip install requests
    -  pip install Faker
    -  pip install robotframework
    -  pip install robotframework-requests
    -  pip install robotframework-faker
- Instalação
    - Node.js
    - Python 3
    - Python
    - Robot Framework
    - Robot libraries:
        - OperatingSystem
        - RequestsLibrary
        - Faker Library
        - Collections
  
## Execução dos Testes:
Execute a API ServeRest localmente:
```text
> npx serverest
```
Abra o cmd na pasta deste repositório e escolha quais grupos de testes deseja executar.
- Para executar todos os testes:
```text
> robot -d .\reports .\casos_testes
```
- Para executar os testes por tags:
```text
> robot -d .\reports -i "tags" .\casos_testes
```
- Para executar os testes de um endpoint por tag :
    - Principais TAGs para testes: <br>
        * [Login](https://serverest.dev/) para executar os testes do Endpoint /login
        * [Usuários](https://serverest.dev/) para executar os testes do Endpoint /usuarios
        * [Produtos](https://serverest.dev/) para executar os testes do Endpoint /produtos
        * [Carrinhos](https://serverest.dev/) para executar os testes do Endpoint /carrinhos
        * [POST](https://serverest.dev/) para executar todos os métodos POST
        * [GET](https://serverest.dev/) para executar todos os métodos POST
        * [PUT](https://serverest.dev/) para executar todos os métodos POST
        * [DELETE](https://serverest.dev/) para executar todos os métodos POST

    

## Diretórios:

* [casos_testes](/casos_testes): Arquivos dos casos de testes de cada endpoint.
    * 01_login_testes.robot <br>
    * 02_usuarios_testes.robot <br>
    * 03_produtos_testes.robot <br>
    * 04_carrinhos_testes.robot <br>     
* [keywords](/keywords): Arquivos com keywords para ações em cada endpoint.
    * carrinhos_keywords.resource <br>
    * login_keywords.resource <br>
    * produtos_keywords.resource <br>
    * usuarios_keywords.resource <br>
* [reports](/reports): Arquivos de suporte para o funcionamento dos testes.
    * log.html <br>
    * output.xml <br>
    * report.html <br>            
* [support](/support): possui arquivos de suporte para o funcionamento dos testes.
    *  [common](/support/common): possui arquivo com as keywords comuns a todos os endpoints.   
        * commom.resource <br>
    *  [fixtures](/support/fixtures): possui as massas de dados estáticas e dinamicas que são usadas nos testes.
        *  [static](/support/fixtures/static): massas de dados estáticas. 
            * carrinhos.json <br>
            * usuarios.json <br>
        *  dynamics.robot                        
    *  [variables](/support/variables): possui arquivo com as variáveis comuns utilizadas nos testes.
        * serverest.resource <br>             
        *  base.resource
