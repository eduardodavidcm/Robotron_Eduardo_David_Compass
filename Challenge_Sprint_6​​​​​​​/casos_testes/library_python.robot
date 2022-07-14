* Settings *
Documentation           Arquivo de testes de arquivos python
Library                 library_teste.py

* Test Cases *
Retornar Usuários com Carrinho
    [tags]              usuarios_carrinho      
    ${users}            Usuarios Com Carrinho      ${10}  # Inserir a quantidade de usuários deseja retornar
    Log To Console      Lista de usuários com carrinho: ${users}

Cadastrar Produtos
    [tags]              cadastrar_produtos 
    ${prods}            Cadastrar Produtos          ${10}    # Inserir a quantidade de produtos que deseja criar
    Log To Console      ${prods}

Cadastrar Usuarios
    [tags]              cadastrar_usuarios
    ${users}            Cadastrar Usuarios          ${10}    # Inserir a quantidade de produtos que deseja criar
    Log To Console      ${users}