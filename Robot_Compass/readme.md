![compass logo](imagem/compass.png)

# Testes Automatizados da API pública da [Serverest](https://serverest.dev/) Utilizando Robot Framework

O Challenge da Sprint 6​​​​​​​ da trilha Robotron - PB da [compass.uol](https://compass.uol/pt/?utm_source=google-ads&utm_medium=ppc&utm_campaign=compasso-uol-institucional&utm_term=compass%20uol&gclid=CjwKCAjw2rmWBhB4EiwAiJ0mtWalabBc8Gmx4-wPDUpL_vNHSMPuB6x1LnQLGLvAI__zqAqu5cynPxoCsOwQAvD_BwE)

O projeto consiste na criação de testes automatizados com Robot para a validação da API. 



## Pré requisitos
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
  
## Execução dos Testes
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
     
    [Login](https://serverest.dev/) para executar os testes do Endpoint /login
    [Usuários](https://serverest.dev/) para executar os testes do Endpoint /usuarios
    [Produtos](https://serverest.dev/) para executar os testes do Endpoint /produtos
    [Carrinhos](https://serverest.dev/) para executar os testes do Endpoint /carrinhos
     
   

    

## Estrutura de Diretórios
Abaixo encontra-se uma breve descrição dos diretórios presentes neste repositório.

* [Testes/](Testes)*: diretório com todos os arquivos que compoem os testes automatizados.
    * [keywords/](Testes/keywords)*: possui arquivos com keywords para ações em cada endpoint da API.
        <details><summary><i>arquivos</i></summary>
        usuarios_keywords.robot <br>
        login_keywords.robot <br>
        produtos_keywords.robot <br>
        carrinhos_keywords.robot </details>      
    * [reports/](Testes/reports)*: possui arquivos referentes as estatisticas e retornos da execução dos testes.
        <details><summary><i>arquivos</i></summary> 
        log.html <br>
        output.xml <br>
        report.html </details>        
    * [support/](Testes/support)*: possui arquivos de suporte para o funcionamento dos testes.
        *  [common/](Testes/support/common)*: possui arquivo com as keywords comuns a todos os endpoints.
            <details><summary><i>arquivo</i></summary> 
            commom.robot </details>           
        *  [fixtures/](Testes/support/fixtures)*: possui as massas de dados estáticas e dinamicas que são usadas nos testes.
            *  [static/](Testes/support/fixtures/static)*: massas de dados estáticas.
                  <details><summary><i>arquivos</i></summary> 
                  json_carrinho_ex.json <br>
                  json_login_ex.json </details>
            *  dynamics.robot            
        *  [python_functions/](Testes/support/python_functions)*: possui arquivo com funções personalizadas em python que são consumidas no robot.
            <details><summary><i>arquivo</i></summary> 
            python_functions.py </details>             
        *  [variables/](Testes/support/variables)*: possui arquivo com as variáveis comuns utilizadas nos testes.
            <details><summary><i>arquivo</i></summary> 
            serverest_variables.robot </details>            
        *  base.robot
    *  [tests/](Testes/tests)*: possui arquivos dos casos de testes de cada endpoint da API.
        <details><summary><i>arquivos</i></summary>
        usuarios_tests.robot <br>
        login_tests.robot <br>
        produtos_tests.robot <br>
        carrinhos_tests.robot </details>