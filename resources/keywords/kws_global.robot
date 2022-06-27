*** Settings ***
Documentation        Aqui estarão presentes todas as keywords que poderam ser ultilizadas em varios testes.
Resource  ../../resources/main.robot

*** Keywords ***
Abrir navegador
    Open Browser           browser=${Navegador.BROWSER}       options=add_experimental_option('excludeSwitches', ['enable-logging'])
    Maximize Browser Window
    Go To                               ${link.base}
    Title Should Be                     ${HOME.TITLE_PAGE_HOME}
    Wait Until Element Is Visible       ${HOME.HEADER_OPTIONS}

Fechar navegador
    Close Browser

Random Pessoa
    ${first_name}  FakerLibrary.First Name
    ${last_name}  FakerLibrary.Last Name
    ${name}  FakerLibrary.name
    # ${cpf}  FakerLibrary.cpf
    ${email}  FakerLibrary.Email
    # ${rg}  FakerLibrary.rg
    ${cidade}  FakerLibrary.city
    ${mae}  FakerLibrary.name female
    ${pai}  FakerLibrary.name male
    ${nascimento}  FakerLibrary.date of birth  minimum_age=18  maximum_age=80
    ${rua}  FakerLibrary.street name
    ${numero}  FakerLibrary.random int  min=100  max=9999
    ${telefone}  FakerLibrary.random int  min=100  max=999
    @{w}  Split String  '${nascimento}'  -
    ${nascimento}  Set Variable  ${w}[2]${w}[1]${w}[0]
    ${nascimento}  Remove String  ${nascimento}  '

    ${sexo}  FakerLibrary.random int  min=0  max=1
    &{pessoa}  Create Dictionary
    ...  nome=${name}
    ...  cidade=${cidade}
    ...  cep=00000
    ...  mae=${mae}
    ...  pai=${pai}
    ...  nascimento=${nascimento}
    ...  rua=${rua}
    ...  numero=${EMPTY}${numero}
    ...  telefone=${EMPTY}4199${telefone}7${telefone}
    ...  mail=${email}
    ...  first_name=${first_name}
    ...  last_name=${last_name}

    Log  ${pessoa}
    Log To Console    Dados da pessoa gerada: ${pessoa}
    [Return]  ${pessoa}