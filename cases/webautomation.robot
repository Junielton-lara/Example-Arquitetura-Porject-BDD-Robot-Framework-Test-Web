*** Settings ***
Documentation        Aqui estarão presentes os testes escritos em BDD.

*** Settings ***
Resource  ../resources/main.robot

Suite Setup      Abrir navegador
# Suite Teardown   Fechar Navegador

*** Test Cases ***
Caso de Teste 01: Pesquisar produto existente​
    #[Tags]            PESQUISARPRODUTO    
    Dado que pesquiso por produto comnome "Blouse" no campo de pesquisa​
    Quando clico no botão pesquisar
    Então o produto "Blouse" devera ser listado no site

Caso de Teste 04: Adicionar Cliente
    # [Tags]            CADASTRARCLIENTE
    Dado que clico em "Sign in"
    Quando Informar um e-mail válido
    E Preencher os dados obrigatórios
    E Submeter cadastro
    Então a conta devera ser efetuada efetuado com sucesso